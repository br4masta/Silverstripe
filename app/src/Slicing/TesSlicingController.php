<?php

use SilverStripe\Control\Controller;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FormAction;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Control\Session;


class TesSlicingController extends Controller
{
    // untuk atur $Link
    // sesuaikan dengan Routingnya di route.yml
    private static $url_segment = 'slicing';

    private static $allowed_actions = [
        'index',
        'login',
        'daftar',
        'detail_dasboard',
        'history_langganan',
        'kategori',
        'menu',
        'getMakanan',
        'showtable',
    ];

    public function index()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('Slicing/dasboard/dasboard', 'Slicing/dasboard/pagedasboard'));
    }
    public function detail_dasboard()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('Slicing/dasboard/Dasboard_detail', 'Slicing/dasboard/pagedasboard'));
    }
    public function history_langganan()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('Slicing/dasboard/History_langganan', 'Slicing/dasboard/pagedasboard'));
    }
    public function kategori()
    {

        $data = [];
        return $this->customise($data)->renderWith(array('Slicing/daftar_menu/kategori/kategori', 'Slicing/dasboard/pagedasboard'));
    }
    public function menu()
    {
          // konfigurasi koneksi database
          $servername = "localhost";
          $username = "root";
          $password = "";
          $dbname = "silverstripe_2";
      
          // membuat koneksi database
          $conn = new mysqli($servername, $username, $password, $dbname);
      
          // mengecek koneksi database
          if ($conn->connect_error) {
              die("Connection failed: " . $conn->connect_error);
          }


        $sql = "SELECT id, Nama, Kategori, Harga, Status FROM makanan $where $order_by LIMIT $start, $length";

        $data = [];
        return $this->customise($data)->renderWith(array('Slicing/daftar_menu/menu/menu', 'Slicing/dasboard/pagedasboard'));
    }

    public function login() {
        return $this->renderWith('Slicing/login/login');
    }
    public function daftar() {
        return $this->renderWith('Slicing/daftar/daftar');
    }

    public function showtable() {
    //   return $this->renderWith('datatablecustom/showtable');

      $data = [];
      return $this->customise($data)->renderWith(array('datatablecustom/table', 'datatablecustom/showtable'));
    }

    public function getMakanan() {
        
            // konfigurasi koneksi database
            $servername = "localhost";
            $username = "root";
            $password = "";
            $dbname = "silverstripe_2";
        
            // membuat koneksi database
            $conn = new mysqli($servername, $username, $password, $dbname);
        
            // mengecek koneksi database
            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }
        
            // mengambil data dari database
            $start = isset($_GET['start']) ? $_GET['start'] : 0;
            $length = isset($_GET['length']) ? $_GET['length'] : 10;
            $search = isset($_GET['search']['value']) ? $_GET['search']['value'] : '';
            $order_column = isset($_GET['order'][0]['column']) ? $_GET['order'][0]['column'] : 0;
            $order_dir = isset($_GET['order'][0]['dir']) ? $_GET['order'][0]['dir'] : 'asc';
        
            // membangun query untuk filtering dan sorting
            $where = '';
            if (!empty($search)) {
                $where = " WHERE (id LIKE '%$search%' OR Nama LIKE '%$search%' OR Kategori LIKE '%$search%' OR Harga LIKE '%$search%') ";
            }
            $order_by = '';
            if ($order_column == 0) {
                $order_by = " ORDER BY id $order_dir ";
            } elseif ($order_column == 1) {
                $order_by = " ORDER BY Nama $order_dir ";
            } elseif ($order_column == 2) {
                $order_by = " ORDER BY Kategori $order_dir ";
            } elseif ($order_column == 3) {
                $order_by = " ORDER BY Harga $order_dir ";
            } elseif ($order_column == 4) {
                $order_by = " ORDER BY Status $order_dir ";
            } 
        
            $sql_count = "SELECT COUNT(*) as count FROM makanan $where";
            $result_count = $conn->query($sql_count);
            $row_count = $result_count->fetch_assoc();
            $count = $row_count['count'];
        

            $sql = "SELECT id, Nama, Kategori, Harga, Status FROM makanan $where $order_by LIMIT $start, $length";
            $result = $conn->query($sql);
        
            // memformat data untuk DataTables
            $data = array();
            while ($row = $result->fetch_assoc()) {
                $checkbox = '<input type="checkbox">';
                // aksi
                $aksi='<div class="dropdown">
                <a class="btn" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                    Aksi
                    <img src="$ThemeDir/images/img/menu/chevron-down.svg" alt="">
                </a> 
              
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#">View</a></li>
                  <li><a class="dropdown-item" href="#">Edit</a></li>
                  <li><a class="dropdown-item" href="#">Delete</a></li>
                </ul>
              </div>';
              $row['checkbox'] = $checkbox;
              $row['aksi'] = $aksi;
              $data[] = $row;
            }
            
            // mengirimkan data ke DataTables
            $response = array(
                "draw" => isset($_GET['draw']) ? intval($_GET['draw']) : 0,
                "recordsTotal" => $count,
                "recordsFiltered" => $count,
                "data" => $data
                );
        
        
        echo json_encode($response);

        // menutup koneksi database
        $conn->close();}
}