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
        'halo',
        'login'
    ];

    public function index()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('index', 'Slicing/index'));
    }
    
    public function halo()
    {
        $data = [];
        return $this->customise($data)->renderWith(array('Slicing/halo', 'Slicing/index'));
    }

    public function login() {
        return $this->renderWith('Slicing/login');
    }
    
    



    
}