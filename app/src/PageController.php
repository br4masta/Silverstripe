<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\Control\Controller;
    use SilverStripe\Forms\Form;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\Forms\CurrencyField;
    use SilverStripe\Forms\FormAction;
    use SilverStripe\ORM\PaginatedList;

    class PageController extends ContentController
    {
        private static $allowed_actions = [
            "coba",
            "produk",
            "test",
            "tambah",
            "sunting",
            'cobaah',
            'forTemplate'
        ];
    
        // public function index() {
        //     return $this->customise([
        //     ])->renderWith(['Produk', 'Page']);
        // }
        public function forTemplate() {
            return $this->renderWith('Layout/halo');
        }
    
        public function cobaah() {
            $data = array(
                'Title' => 'Hello world!',
                'Content' => 'Welcome to my page.'
            );
            return $this->customise($data)->renderWith(array('MyController', 'Page'));
        }

        public function test($request) {
            $list = PaginatedList::create(Produk::get(), $request);
            $list->setPageLength(10);
    
            return $this->customise([
                'List' => $list,
            ])->renderWith(['test', 'Page']);
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
            ])->renderWith(['tambah', 'Page']);
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
            ])->renderWith(['sunting', 'Page']);
        }



        public function produk()
        {
            $data = [];
            return $this->customise($data)->renderWith(['produk',"Page"]);
        }
       

        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        // private static $allowed_actions = [
        //     "coba"
        // ];

        protected function init()
        {
            parent::init();
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }
        public function coba()
        {
            $data = [];
            return $this->customise($data)->renderWith(['coba',"Page"]);
        }
    }
}
