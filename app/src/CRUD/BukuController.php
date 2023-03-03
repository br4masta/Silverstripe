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


class BukuController extends Controller
{

    // untuk atur $Link
    // sesuaikan dengan Routingnya di route.yml
    private static $url_segment = 'book_crud';

    private static $allowed_actions = [
        'index',
        'add',
        'edit',
        'delete',
        'update', 
        'simpan',
        'data', //
        'tabeldata',
        'getBooks',
        'Bookhome'
    ];

     // ...

    /**
     * Returns the session object
     *
     * @return Session
     */
    public function getSession()
    {
        return $this->getRequest()->getSession();
    }
    
    public function Bookhome() {
        return $this->renderWith('CRUD/BookHome');
    }
    
    public function index()
    {
        $list = Buku::get();

        // atur jumlah item yang ditampilkan pada setiap halaman
        // $itemsPerPage = 5;
   
        // $paginatedList = PaginatedList::create($list, $this->getRequest())
        //     ->setPageLength($itemsPerPage);
   
        $paginatedList = PaginatedList::create($list, $this->getRequest());
       // cek apakah ada pesan sukses dalam sesi
       $successMessage = $this->getRequest()->getSession()->get('successMessage');
       $pesanHapus = $this->getRequest()->getSession()->get('pesanHapus');
   
       // hapus pesan sukses dari sesi
       $this->getRequest()->getSession()->clear('successMessage');
       $this->getRequest()->getSession()->clear('pesanHapus');
   
       // dapatkan nomor halaman saat ini
       $currentPage = $paginatedList->CurrentPage();
   
       // buat variabel untuk menyimpan nomor halaman sebelumnya dan halaman selanjutnya
       $previousPage = $currentPage - 1;
       $nextPage = $currentPage + 1;
   
       // dapatkan jumlah halaman yang tersedia
       $totalPages = $paginatedList->TotalPages();
   
       return $this->customise([
           'Books' => $paginatedList,
           'successMessage' => $successMessage, // tambahkan pesan sukses ke template
           'pesanHapus' => $pesanHapus,
           'currentPage' => $currentPage,
           'previousPage' => $previousPage,
           'nextPage' => $nextPage,
           'totalPages' => $totalPages 
       ])->renderWith('CRUD/BookDatatable');
}

public function tabeldata()
    {
    $list = Buku::get();

    $paginatedList = PaginatedList::create($list, $this->getRequest());    

    // cek apakah ada pesan sukses dalam sesi
    $successMessage = $this->getRequest()->getSession()->get('successMessage');
    $pesanHapus = $this->getRequest()->getSession()->get('pesanHapus');

    // hapus pesan sukses dari sesi
    $this->getRequest()->getSession()->clear('successMessage');
    $this->getRequest()->getSession()->clear('pesanHapus');


    return $this->customise([
        'Books' => $paginatedList,
        'successMessage' => $successMessage, // tambahkan pesan sukses ke template
        'pesanHapus' => $pesanHapus, 
    ])->renderWith('CRUD/BookIndex');
}



  
    
    public function simpan($request)
        {
            // Var_dump($request);die;
            $book = Buku::create();
            $book->Title = $request->postVar('Title');
            $book->Author = $request->postVar('Author');
            $book->Publisher = $request->postVar('Publisher');
            $book->PublishedDate = $request->postVar('PublishedDate');
            $book->write();
    
            $this->getSession()->set('successMessage', 'Data buku berhasil ditambahkan.');
    
            // Redirect to a success page or to the previous page
            return $this->redirect($this->Link('index'));
        }

    public function add()
    {
        $form = $this->BookForm();
        return $this->customise([
            'Form' => $form,
        ])->renderWith('CRUD/BookForm');
    }

    public function edit()
        {
            // Ambil ID dari URL
            // Mengambil data buku dengan ID tertentu dari tabel "Book"
            // Render halaman dengan template "BookShow" dan layout "Layout"
            $id = $this->getRequest()->getVar('id'); 
            // var_dump($id);die;
            $book = Buku::get()->byID($id); 
            return $this->customise(['Book' => $book])->renderWith('CRUD/BookForm'); 
        }


    public function delete()
    {
        $id = $this->getRequest()->getVar('id');
        // var_dump($id);die;
        if ($id) {
            $book = Buku::get()->byID($id);
            if ($book) {
                $book->delete();
            }
        }

        $this->getSession()->set('pesanHapus', 'Data berhasil di hapus.');
        // return $this->redirect('index');
        return $this->redirect($this->Link('index'));
    }

    public function BookForm($book = null)
    {
        $fields = FieldList::create(
            TextField::create('Title', 'Title'),
            TextField::create('Author', 'Author'),
            TextField::create('Publisher', 'Publisher'),
            DateField::create('PublishedDate', 'Published Date')
        );

        $actions = FieldList::create(
            FormAction::create('save', 'Save')
        );

        $validator = RequiredFields::create('Title', 'Author', 'Publisher', 'PublishedDate');

        $form = Form::create($this, 'BookForm', $fields, $actions, $validator);

        if ($book) {
            $form->loadDataFrom($book);
        }

        return $form;
    }

    public function update($request)
    {
        // Mengambil ID buku yang akan diupdate
        $bookID = $request->getVar('id');
        // Var_dump($bookID);die;
    
        // Membuat instance dari model Book dan mengambil data buku berdasarkan ID
        $book = Buku::get()->byID($bookID);
    
        // Mengambil data dari form dan mengisi nilai-nilai pada instance $book
        $bookData = $request->postVars();
        $book->Title = $bookData['Title'];
        $book->Author = $bookData['Author'];
        $book->Publisher = $bookData['Publisher'];
        $book->PublishedDate = $bookData['PublishedDate'];
    
        // Menyimpan data ke dalam database
        $book->write();

        $this->getSession()->set('successMessage', 'Data buku berhasil diubah.');
        
        // Redirect ke halaman index setelah berhasil menyimpan data
        return $this->redirect($this->Link('index'));
    }


    public function data() {
    
        $list = Buku::get();
      
        $itemsPerPage = 5;
      
        $paginatedList = PaginatedList::create($list, $this->getRequest())
          ->setPageLength($itemsPerPage);
      
        $currentPage = $paginatedList->CurrentPage();
      
        $totalPages = $paginatedList->TotalPages();
      
        $data = array();
        foreach ($paginatedList as $book) {
          $item = array(
            "Title" => $book->Title,
            "Author" => $book->Author,
            "Publisher" => $book->Publisher,
            "PublishedDate" => $book->PublishedDate
          );
          array_push($data, $item);
        }
      
        $result = array(
          "draw" => intval($_POST['draw']),
          "recordsTotal" => $list->count(),
          "recordsFiltered" => $list->count(),
          "data" => $data
        );
      
        echo json_encode($result);
        exit();
      }


      public function getBooks() {
        
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
                $where = " WHERE (Title LIKE '%$search%' OR Author LIKE '%$search%' OR Publisher LIKE '%$search%' OR PublishedDate LIKE '%$search%') ";
            }
            $order_by = '';
            if ($order_column == 0) {
                $order_by = " ORDER BY ClassName $order_dir ";
            } elseif ($order_column == 1) {
                $order_by = " ORDER BY ID $order_dir ";
            } elseif ($order_column == 2) {
                $order_by = " ORDER BY LastEdited $order_dir ";
            } elseif ($order_column == 3) {
                $order_by = " ORDER BY Created $order_dir ";
            } elseif ($order_column == 4) {
                $order_by = " ORDER BY Title $order_dir ";
            } elseif ($order_column == 5) {
                $order_by = " ORDER BY Author $order_dir ";
            } elseif ($order_column == 6) {
                $order_by = " ORDER BY PublishedDate $order_dir ";
            } elseif ($order_column == 7) {
                $order_by = " ORDER BY Publisher $order_dir ";
            }
        
            $sql_count = "SELECT COUNT(*) as count FROM buku $where";
            $result_count = $conn->query($sql_count);
            $row_count = $result_count->fetch_assoc();
            $count = $row_count['count'];
        
            $sql = "SELECT ClassName, ID, LastEdited, Created, Title, Author, PublishedDate, Publisher FROM buku $where $order_by LIMIT $start, $length";
            $result = $conn->query($sql);
        
            // memformat data untuk DataTables
            $data = array();
            while ($row = $result->fetch_assoc()) {
                $action = '<a href="http://localhost/Silverstripe-2/book_crud/edit/?action=edit&amp;id=' . $row['ID'] . '" class="btn btn-sm btn-warning">Edit</a> <a href="http://localhost/Silverstripe-2/book_crud/delete/?action=delete&amp;id=' . $row['ID'] . '" class="btn btn-sm btn-danger">Delete</a>';
                $row['Actions'] = $action;
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
        $conn->close();
    }
    
    



    
}