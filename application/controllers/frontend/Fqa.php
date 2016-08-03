<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Fqa extends Frontend_base {
	var $page_data=array();
	
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/fqa_model', 'model');
		
		//$this->page_data['partners']=$this->fqa_model->get_partners();
    }
	
	public function fqas(){
		
		$this->page_data['banner'] 				= $this->model->get_banner('faqs');
		$this->page_data['faqs'] 				= $this->model->get_faqs();
		$this->page_data['ads_v'] 			= $this->model->get_vertical_ads('faqs');
		$this->page_data['ads_h'] 			= $this->model->get_horizontal_ads('faqs');
		$this->page_data['page_title']='faqs';
		$this->page_data['page_name']='faqs';
		$this->load->view('frontend/index', $this->page_data);
	}
	
	
}
