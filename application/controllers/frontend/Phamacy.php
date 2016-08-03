<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Phamacy extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/phamacy_model');
		$this->load->model('frontend/search_model');
    }

	
	public function phamacies(){
		
		
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		$page 		=isset($_GET['page']) ? $_GET['page'] : 0;
		
		$lang='en';
		
		$config["base_url"] 	= $this->page_data['lang_url']."/phamacies?province=".$province."&distrit=".$distrit."&key=".$key;
		$config["total_rows"] 	= $this->phamacy_model->record_count();
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

       
		$this->page_data['banner'] 			= $this->phamacy_model->get_banner('pharmaciesx');
		$this->page_data['data']			= $this->phamacy_model->search_phamacies($config["per_page"], $page);
		$this->page_data["links"] 			= $this->pagination->create_links();

		$this->page_data['ads_v'] 			= $this->phamacy_model->get_vertical_ads(18);
		$this->page_data['ads_h'] 			= $this->phamacy_model->get_horizontal_ads(18);

		$this->page_data['provinces'] 		= $this->phamacy_model->get_provinces();
		
		
		$this->page_data['active_menu']='phamacies';
		$this->page_data['page_name']='phamacies';
		$this->load->view('frontend/index', $this->page_data);
	}
	public function view_phamacy($slug=''){
		if($slug!=""){
			$data_phamacy_id=$this->phamacy_model->get_phamacy_id_by_slug($slug);
			if(!empty($data_phamacy_id)){
				$id_phamacy = $data_phamacy_id[0]->id;	
				$this->page_data['banner'] 				= $this->phamacy_model->get_banner('view-pharmacy');
				$this->page_data['data']				= $this->phamacy_model->phamacy_detail_info($id_phamacy);
				$this->page_data['branches']			= $this->phamacy_model->get_phamacy_branches($id_phamacy);
				
				$this->page_data['ads_v'] 			= $this->phamacy_model->get_vertical_ads(20);
				$this->page_data['ads_h'] 			= $this->phamacy_model->get_horizontal_ads(20);
				
				$this->page_data['galleries']			= $this->phamacy_model->get_phamacy_galleries($id_phamacy);
				$this->page_data['page_title']			="pharmacy-profile";
				$this->page_data['active_menu']='phamacies';
				$this->page_data['page_name']			='view_phamacy';
				$this->load->view('frontend/index', $this->page_data);
		    }else{
		    	$this->found_404();
		    }
		 }else{
		 	$this->found_404();
		 }
	}
	

	
	
	
}
