<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Content extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/content_model', 'model');
    }

	
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>>>> Content
	public function contents($alais=''){
		if($alais!=""){
			$content = $this->model->get_content($alais);
			if($content!=''){
				$this->page_data['banner'] 	= $this->model->get_banner($alais);
				$this->page_data['ads_v'] 			= $this->model->get_vertical_ads($alais);
				$this->page_data['ads_h'] 			= $this->model->get_horizontal_ads($alais);
				$this->page_data['page_name'] 	= 'content';
				$this->page_data['page_title'] 	= $content[0]->name;
				$this->page_data['data'] 		= $content;
				//$this->page_data['featured_doctors']= $this->content_model->get_aside_featured_doctor();
				$this->load->view('frontend/index', $this->page_data);
			}else{
				$this->found_404();
			}
		}else{
			$this->found_404();
		}
	}

	
	
}
