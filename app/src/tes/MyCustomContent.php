<?php

use SilverStripe\View\ViewableData;

class MyCustomContent extends ViewableData {
    public function forTemplate() {
        return $this->renderWith('Layout/halo');
    }
}
