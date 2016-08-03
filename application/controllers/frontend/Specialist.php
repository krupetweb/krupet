<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Specialist extends Frontend_base {

	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/hospital_model');
		$this->load->model('search_model');
    }

	
	public function hospitals(){
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		$page 		=isset($_GET['page']) ? $_GET['page'] : 0;
		
		$lang='en';
		
		$config["base_url"] 	= base_url().$lang."/specialist?province=".$province."&distrit=".$distrit."&specification=".$specification."&key=".$key;
		$config["total_rows"] 	= $this->hospital_model->record_count();
        $config["per_page"] 	= 12;
		$config['query_string_segment'] = 'page';
		$config['enable_query_strings']=true;
        $config['page_query_string']=true;
		
		//config for bootstrap pagination class integration
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
       
		
        $this->pagination->initialize($config);

       
		$this->page_data['banner'] 				= $this->hospital_model->get_banner('specialists');
		$this->page_data['data']= $this->hospital_model->search_hospitals($config["per_page"], $page);
		$this->page_data["links"] = $this->pagination->create_links();
		$this->page_data['categories']= $this->search_model->get_hospital_categories();
		
		$this->page_data['ads_v'] 			= $this->hospital_model->get_vertical_ads(6);
		$this->page_data['ads_h'] 			= $this->hospital_model->get_horizontal_ads(6);

		$this->page_data['provinces'] 		= $this->search_model->get_provinces();
		$this->page_data['specifications'] 	= $this->search_model->get_specifications();
		
		$this->page_data['active_menu']='speicfication';
		$this->page_data['page_name']='specialist';
		$this->load->view('frontend/index', $this->page_data);
	}
	
	
}
