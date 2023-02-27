<?php

use SilverStripe\CMS\Controllers\ContentController;

class MyCustomPage extends ContentController
{

    private static $allowed_actions = [
        'forTemplate'
    ];

    // public function index() {
    //     return $this->customise([
    //     ])->renderWith(['Produk', 'Page']);
    // }
    public function forTemplate() {
        return $this->renderWith('Layout/halo');
    }
}
