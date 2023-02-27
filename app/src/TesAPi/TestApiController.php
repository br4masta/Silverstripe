<?php

use SilverStripe\Control\Controller;

class TesApiController extends Controller
{
  private static $allowed_actions = [
    'index'
  ];

  public function index()
  {
    $url = 'https://jsonplaceholder.typicode.com/comments';
    $ch = curl_init($url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    $response = curl_exec($ch);
    curl_close($ch);
    $comments = json_decode($response, true);
    return $this->customise([
      'Comments' => $comments
    ])->renderWith('Api/TestApi');
  }
}
