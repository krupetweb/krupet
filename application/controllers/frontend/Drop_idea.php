<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Drop_idea extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/drop_idea_model','model');
    }

	
	public function drop_ideas(){
		$this->page_data['page_name']='drop_ideas';
		$this->load->view('frontend/index', $this->page_data);
	}
	public function submit_contact(){
		echo $this->model->submit_contact();
	}
	
	
}
