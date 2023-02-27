<?php

use SilverStripe\Control\Controller;
use SilverStripe\Control\HTTPRequest;

class TeamController extends Controller 
{
        
    private static $allowed_actions = [
        'players',
        'index',
        'coba'
    ];
    
    public function index(HTTPRequest $request) 
    {
        // ..
    }

    public function players(HTTPRequest $request) 
    {
        print_r($request->allParams());
    }

    public function coba(){
        return 'Hello World!';
    }


}