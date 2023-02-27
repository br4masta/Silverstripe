<?php
use SilverStripe\ORM\DataObject;


class Book extends DataObject {

private static $table_name = "Book";

private static $db = [
    'Title' => 'Varchar',
    'Author' => 'Varchar',
    'Price' => 'Varchar'
];

}