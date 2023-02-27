<?php
use SilverStripe\Control\Controller;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\ORM\PaginatedList;

class TesController extends ContentController {
    private static $allowed_actions = array(
        'tes',
        'coba',
        'produk'
    );

    public function tes() {
        $data = array(
            'Title' => 'Hello world!',
            'Content' => 'Welcome to my page.'
        );
        return $this->customise($data)->renderWith(array('MyController', 'Page'));
    }
    
    public function coba(){
        // return 'tes coba';
        return $this->renderWith('ViewMeeting');
    }

    public function produk($request) {
        $list = PaginatedList::create(Produk::get(), $request);
        $list->setPageLength(5);

        return $this->customise([
            'List' => $list,
        ])->renderWith(['test', 'Page']);
    }
}
