<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Subscribe extends Frontend_base {
	var $page_data=array();
	
	function __construct(){
		parent::__construct();
        $this->load->model('subscribe_model');
    }
	
	public function submit_subscribe(){
		$this->subscribe_model->submit_subscribe();
	}
	public function unsubscribe($unactive_code=""){
		if($unactive_code!=""){
			$this->subscribe_model->unsubscribe($unactive_code);
			$this->page_data['page_name']='unsubscribe';
			$this->load->view('frontend/index', $this->page_data);
		}else{
			$this->found_404();
		}
	}
	
	
}
