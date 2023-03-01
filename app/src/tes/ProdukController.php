<?php

use SilverStripe\Control\Controller;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\CurrencyField;
use SilverStripe\Forms\FormAction;
use SilverStripe\ORM\PaginatedList;

class ProdukController extends Controller {
    private static $allowed_actions = [
        'index',
        'tambah',
        'sunting',
        'hapus',
    ];
    

    public function index($request) {
        $list = PaginatedList::create(Produk::get(), $request);
        $list->setPageLength(10);

        return $this->customise([
            'List' => $list,
        ])->renderWith(['Produk', 'Page']);
    }

    public function tambah() {
        $form = Form::create(
            $this,
            __FUNCTION__,
            FieldList::create(
                TextField::create('Nama'),
                TextareaField::create('Deskripsi'),
                CurrencyField::create('Harga')
            ),
            FieldList::create(
                FormAction::create('simpan')->setTitle('Simpan')
            )
        );

        return $this->customise([
            'Form' => $form,
        ])->renderWith(['Produk_tambah', 'Page']);
    }

    public function sunting($request) {
        $id = $request->param('ID');
        $produk = Produk::get()->byID($id);

        if (!$produk) {
            return $this->httpError(404, 'Produk tidak ditemukan');
        }

        $form = Form::create(
            $this,
            __FUNCTION__,
            FieldList::create(
                TextField::create('Nama')->setValue($produk->Nama),
                TextareaField::create('Deskripsi')->setValue($produk->Deskripsi),
                CurrencyField::create('Harga')->setValue($produk->Harga)
            ),
            FieldList::create(
                FormAction::create('simpan')->setTitle('Simpan')
            )
        );

        return $this->customise([
            'Form' => $form,
        ])->renderWith(['Produk_sunting', 'Page']);
    }
}
   
