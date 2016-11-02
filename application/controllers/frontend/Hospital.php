<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Hospital extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/hospital_model');
		$this->load->model('frontend/search_model');
    }

	
	public function hospitals(){
		$lang=$this->uri->segment(1);
		$cat		=isset($_GET['cat']) ? $_GET['cat'] : "";
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		$type		=isset($_GET['type']) ? $_GET['type'] : "";
		$page 		=isset($_GET['page']) ? $_GET['page'] : 0;
		
		$config["base_url"] 	= base_url().$lang."/hospitals?cat=".$cat."&type=".$type."&province=".$province."&distrit=".$distrit."&specification=".$specification."&key=".$key;
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
        // echo $cat;
        // exit();
       
		$this->page_data['banner'] 			= $this->hospital_model->get_banner('hospitals');
		$this->page_data['data']			= $this->hospital_model->search_hospitals($config["per_page"], $page);
		$this->page_data["links"] 			= $this->pagination->create_links();
		$this->page_data['categories']		= $this->search_model->get_hospital_categories();
		
		$this->page_data['ads_v'] 			= $this->hospital_model->get_vertical_ads(2);
		$this->page_data['ads_h'] 			= $this->hospital_model->get_horizontal_ads(2);

		$this->page_data['provinces'] 		= $this->search_model->get_provinces();
		$this->page_data['specifications'] 	= $this->search_model->get_specifications();
		
		$this->page_data['active_menu']		='hospitals';
		$this->page_data['page_name']		='hospitals';
		$this->load->view('frontend/index', $this->page_data);
	}
	public function view_hospital($slug=''){
		if($slug!=""){
			$data_hospital_id=$this->hospital_model->get_hospital_id_by_slug($slug);
			if(!empty($data_hospital_id)){
				$id_hospital = $data_hospital_id[0]->id;
				$this->page_data['id_hospital'] 		= $id_hospital;	

				$this->page_data['banner'] 				= $this->hospital_model->get_banner('view-hospital');
				$this->page_data['data']				= $this->hospital_model->hospital_detail_info($id_hospital);
				$this->page_data['contact']				= $this->hospital_model->get_contact($id_hospital);
				$this->page_data['branches']			= $this->hospital_model->get_hospital_branches($id_hospital);
				$this->page_data['doctors']				= $this->hospital_model->get_hospital_doctors($id_hospital);
				$this->page_data['services']			= $this->hospital_model->get_hospital_services($id_hospital);
				
				$this->page_data['ads_v'] 			= $this->hospital_model->get_vertical_ads(3);
				$this->page_data['ads_h'] 			= $this->hospital_model->get_horizontal_ads(3);

				$this->page_data['galleries']			= $this->hospital_model->get_hospital_galleries($id_hospital);
				//$this->page_data['rating_data']			= $this->hospital_model->get_hospital_rating_data($id_hospital);
				$this->page_data['departments']			= $this->hospital_model->get_hospital_departments($id_hospital);
				
				$this->page_data['active_menu']		='hospitals';
				$this->page_data['page_title']="Hospital Detail";  //get_lang('hospital Profile');
				$this->page_data['page_name']='view_hospital';
				// echo json_encode ($this->page_data['services']);
				
				$this->load->view('frontend/index', $this->page_data);
		    }else{
		    	$this->found_404();
		    }
		}else{
		    	$this->found_404();
		}
	}
	
	public function get_specifications_forsearh(){
		$this->page_data['specifications']= $this->search_model->get_specifications();
	}
	public function get_hospitals_for_rate(){
		$this->page_data['data']=$this->hospital_model->get_hospitals_for_rate();
		$this->load->view('frontend/pages/parts/hospitals_for_rate', $this->page_data);
	}
	public function hospital_rating($slug=""){
		if($slug!=""){
			$data_hospital=$this->hospital_model->get_hospital_id_by_slug($slug);
			if(!empty($data_hospital)){
				$this->page_data['slug'] 		= $slug;
				$this->page_data['id_hospital'] = $data_hospital[0]->id;
				$this->page_data['hospital_name'] = $data_hospital[0]->name;
				$this->page_data['is_rating_code_required'] = $data_hospital[0]->is_rating_code_required;
				$this->page_data['banner'] 				= $this->hospital_model->get_banner('hospital-rating');
				
				$this->page_data['ads_v'] 			= $this->hospital_model->get_vertical_ads(22);
				$this->page_data['ads_h'] 			= $this->hospital_model->get_horizontal_ads(22);

				$this->page_data['questions']= $this->hospital_model->get_rating_questions();
				$this->page_data['departments']= $this->hospital_model->get_hospital_departments($data_hospital[0]->id);
				$this->page_data['page_title']=get_lang('hospital-rating');
				$this->page_data['active_menu']		='hospitals';
				$this->page_data['page_name']='hospital_rating';
				$this->load->view('frontend/index', $this->page_data);
		    }else{
		    	 $this->found_404();
		    }
		}else{
		    $this->found_404();
		}
	}
	public function submit_hospital_rating(){
		$this->hospital_model->submit_hospital_rating();
	}
	public function get_comments($id_department=0, $id_hospital=0){
		$this->hospital_model->get_comments($id_department, $id_hospital);
	}
	public function get_price($id_hospital=0, $id_department=0){
		//echo $id_department;die;
		$this->page_data['data']=$this->hospital_model->get_hospital_services($id_hospital, $id_department);
		// echo json_encode($this->page_data['data']);
		$this->load->view('frontend/pages/parts/hospital_service_data', $this->page_data);
	}

	

	
	
}
