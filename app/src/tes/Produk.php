<?php

use SilverStripe\ORM\DataObject;

class Produk extends DataObject {
    private static $db = [
        'Nama' => 'Varchar(255)',
        'Deskripsi' => 'Text',
        'Harga' => 'Currency',
    ];

    private static $summary_fields = [
        'Nama',
        'Harga.Currency',
    ];
}
