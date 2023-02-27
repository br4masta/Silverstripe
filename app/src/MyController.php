<?php
use SilverStripe\Control\Controller;

class MyController extends Controller {
    private static $allowed_actions = array(
        'index'
    );

    public function index() {
        $data = array(
            'Title' => 'Hello world!',
            'Content' => 'Welcome to my page.'
        );
        return $this->customise($data)->renderWith(array('MyController', 'Page'));
    }
    
}
