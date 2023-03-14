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


class TesSlicingController2 extends Controller
{
    // untuk atur $Link
    // sesuaikan dengan Routingnya di route.yml
    private static $url_segment = 'slicing2';

    private static $allowed_actions = [
        'index',
        'getMakanan',
    ];

    public function index()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('Slicing2/dasboard/dasboard', 'Slicing2/dasboard/pagedasboard'));
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
            $order_by = " ORDER BY Nama $order_dir ";
        } elseif ($order_column == 1) {
            $order_by = " ORDER BY Kategori $order_dir ";
        } elseif ($order_column == 2) {
            $order_by = " ORDER BY Harga $order_dir ";
        } elseif ($order_column == 3) {
            $order_by = " ORDER BY Status $order_dir ";
        } 
    
        $sql_count = "SELECT COUNT(*) as count FROM makanan $where";
        $result_count = $conn->query($sql_count);
        $row_count = $result_count->fetch_assoc();
        $count = $row_count['count'];
    

        $sql = "SELECT Nama, Kategori, Harga,TglBerlaku, Status FROM makanan $where $order_by LIMIT $start, $length";
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
        /*
        *menyatukan harga dan tanggal
        */ 
            $harga_tanggal = $row['Harga'].'/'.$row['TglBerlaku'];

        /*
        *pembuatan kondisi dimana jika status di sesuaikan dengan styling
        *jadi pada tahap ini saya membedakan dengan membuat class aktif dan nonaktif
        */   

          if ($row['Status'] == "aktif"){
              $statusaktif = '<div class="status">
              <p class="aktif">Aktif</p>
          </div>';
        } else{
              $statusaktif = '<div class="status">
              <p class="nonaktif">Nonaktif</p>
          </div>';
          }
          $row['checkbox'] = $checkbox;
          $row['aksi'] = $aksi;
          $row['statusaktif'] = $statusaktif;
          $row['Hargatanggal'] = $harga_tanggal;
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