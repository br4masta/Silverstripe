<?php

use SilverStripe\Control\Controller;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\FormAction;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\Forms\RequiredFields;

class BukuController extends Controller
{
    private static $url_segment = 'books';
    private static $allowed_actions = [
        'index',
        'add',
        'edit',
        'delete'
    ];

    public function index()
    {
        $list = Buku::get();
        $paginatedList = PaginatedList::create($list, $this->getRequest());
        return $this->customise([
            'Books' => $paginatedList,
        ])->renderWith('CRUD/BookIndex');
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
        $id = $this->getRequest()->getVar('id');
        if ($id) {
            $book = Buku::get()->byID($id);
            if ($book) {
                $form = $this->BookForm($book);
                return $this->customise([
                    'Form' => $form,
                ])->renderWith('CRUD/BookForm');
            }
        }
        return $this->httpError(404);
    }

    public function delete()
    {
        $id = $this->getRequest()->getVar('id');
        if ($id) {
            $book = Buku::get()->byID($id);
            if ($book) {
                $book->delete();
            }
        }
        return $this->redirect('books');
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

    
}