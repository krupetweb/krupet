<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Health_consultant extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/health_consultant_model','model');
    }

	
	public function health_consultants(){
		$this->page_data['page_name']='health_consultants';
		$this->page_data['banner'] 				= $this->model->get_banner('health-consultant');
		$this->page_data['horizontal_ads'] 	= $this->model->get_horizontal_ads('health-consultant');
		$this->page_data['page_title']="health-consultant";
		$this->load->view('frontend/index', $this->page_data);
	}
	public function submit_contact(){
		echo $this->model->submit_contact();
	}
	
	
}
