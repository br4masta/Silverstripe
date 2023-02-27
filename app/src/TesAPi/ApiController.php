<?php

use SilverStripe\Control\Controller;
use SilverStripe\View\ArrayData;
// use App\src\ApiRequest;


class ApiController extends Controller
{
    private static $url_segment = 'tes-api';

    private static $allowed_actions = [
        'index'
    ];

    public function index()
    {
        $apiRequest = new ApiRequest();
        $comments = $apiRequest->getComments();

        $data = [
            'Comments' => $comments
        ];

        return $this->renderWith('TestApi', ArrayData::create($data));
    }
}
