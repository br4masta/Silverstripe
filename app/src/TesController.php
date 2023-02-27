<?php
use SilverStripe\Control\Controller;
use SilverStripe\CMS\Controllers\ContentController;


class TesController extends ContentController {
    private static $allowed_actions = array(
        'tes',
        'coba'
    );

    public function tes() {
        $data = array(
            'Title' => 'Hello world!',
            'Content' => 'Welcome to my page.'
        );
        return $this->customise($data)->renderWith(array('MyController', 'Page'));
    }
    
    public function coba(){
        return 'tes coba';
    }
}
