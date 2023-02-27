<?php
use SilverStripe\Control\Controller;
use SilverStripe\CMS\Controllers\ContentController;
use SilverStripe\ORM\PaginatedList;


class TesApiController extends controller
{
    public function index()
    {
        $apiRequest = new ApiRequest();
        $comments = $apiRequest->getComments();

        return [
            'Comments' => $comments
        ];
    }
}
