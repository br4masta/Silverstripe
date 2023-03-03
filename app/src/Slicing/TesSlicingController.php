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
    private static $url_segment = 'book_crud';

    private static $allowed_actions = [
        'index'
    ];

    public function index()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('index', 'Slicing/index'));
    }
    
    



    
}