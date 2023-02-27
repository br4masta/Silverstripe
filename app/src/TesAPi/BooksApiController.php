<?php

use SilverStripe\Control\Controller;
use SilverStripe\View\ArrayData;
use SilverStripe\Control\HTTPRequest;

class BooksApiController extends Controller {
    private static $allowed_actions = [
        'index',
        'books',
        'testapi'
    ];

    public function index(HTTPRequest $request) {
        return 'Books API';
    }

    public function books(HTTPRequest $request) {
        $books = Book::get();
        $booksList = [];
        
        foreach ($books as $book) {
            array_push($booksList, [
                'ID' => $book->ID,
                'Title' => $book->Title,
                'Author' => $book->Author,
                'Price' => $book->Price
            ]);
        }

        $booksList = json_encode($booksList);
    
        $this->getResponse()->setBody($booksList);    
        $this->getResponse()->addHeader("Content-type", "application/json");
        $this->getResponse()->addHeader('Access-Control-Allow-Origin',
            "*"
        );    
        $this->getResponse()->addHeader("Access-Control-Allow-Methods", "GET");  
        $this->getResponse()->addHeader("Access-Control-Allow-Headers", "x-requested- 
        with");
    
        return $this->getResponse();

        
    }

    public function testapi(HTTPRequest $request) {
        $books = Book::get();
        $booksList = [];
            
        foreach ($books as $book) {
            array_push($booksList, [
                'ID' => $book->ID,
                'Title' => $book->Title,
                'Author' => $book->Author,
                'Price' => $book->Price
            ]);
        }
    
        $booksList = json_encode($booksList);
        
        $this->getResponse()->setBody($booksList);    
        $this->getResponse()->addHeader("Content-type", "application/json");
        $this->getResponse()->addHeader('Access-Control-Allow-Origin', "*");    
        $this->getResponse()->addHeader("Access-Control-Allow-Methods", "GET");  
        $this->getResponse()->addHeader("Access-Control-Allow-Headers", "x-requested-with");
        
        return $this->renderWith('BookApi', ArrayData::create(['BooksList' => $booksList]));
    }

}