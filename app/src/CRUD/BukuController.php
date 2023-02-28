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
    

    public function index()
{
    $list = Buku::get();

     // atur jumlah item yang ditampilkan pada setiap halaman
     $itemsPerPage = 5;

     $paginatedList = PaginatedList::create($list, $this->getRequest())
         ->setPageLength($itemsPerPage);

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


 



    
}