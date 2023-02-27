<?php

use GuzzleHttp\Client;

class ApiRequest
{
    protected $client;

    public function __construct()
    {
        $this->client = new Client([
            // Konfigurasi klien Guzzle di sini
        ]);
    }

    public function getComments()
    {
        $response = $this->client->request('GET', 'https://jsonplaceholder.typicode.com/comments');
        return json_decode($response->getBody(), true);
    }
}
