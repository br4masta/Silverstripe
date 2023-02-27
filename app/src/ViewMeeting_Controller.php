
<?php
 use SilverStripe\CMS\Controllers\ContentController;
 use SilverStripe\Control\Controller;


 class ViewMeeting_Controller extends Controller {

    private static $allowed_actions = array('HospitalMeetings');
  
    private static $url_handlers = array(
        '$Action/$type' => 'HospitalMeetings'
    );
  
    public function init() {
      parent::init();
      if(!Member::currentUser()) {
        return $this->httpError(403);
      }
    }
  
    public function HospitalMeetings(SS_HTTPRequest $request) {
    }
  }