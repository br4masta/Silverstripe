<?php

use SilverStripe\ORM\DataObject;

class Buku extends DataObject
{
    private static $db = [
        'Title' => 'Varchar(255)',
        'Author' => 'Varchar(255)',
        'Publisher' => 'Varchar(255)',
        'PublishedDate' => 'Date',
    ];

    private static $summary_fields = [
        'Title' => 'Title',
        'Author' => 'Author',
        'Publisher' => 'Publisher',
        'PublishedDate.Nice' => 'Published Date',
    ];
}
