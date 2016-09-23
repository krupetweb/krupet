<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Doctor extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/doctor_model');
        $this->load->model('frontend/search_model');
    }

	
	public function doctors(){
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		$page 		=isset($_GET['page']) ? $_GET['page'] : 0;
		
		$lang='en';
		
		$config["base_url"] 	= base_url().$lang."/doctors?province=".$province."&distrit=".$distrit."&specification=".$specification."&key=".$key;
		$config["total_rows"] 	= $this->doctor_model->record_count();
        $config["per_page"] 	= 10;
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

       
		$this->page_data['banner'] 				= $this->doctor_model->get_banner('doctors');
		$this->page_data['data']= $this->doctor_model->search_doctors($config["per_page"], $page);
		
		$this->page_data["links"] = $this->pagination->create_links();

		$this->page_data['ads_v'] 			= $this->doctor_model->get_vertical_ads(4);
		$this->page_data['ads_h'] 			= $this->doctor_model->get_horizontal_ads(4);

		$this->page_data['provinces'] 		= $this->doctor_model->get_provinces();
		$this->page_data['specifications'] 	= $this->search_model->get_specifications();
		
		
		$this->page_data['active_menu']='doctors';
		$this->page_data['page_name']='doctors';
		$this->load->view('frontend/index', $this->page_data);
	}
	public function view_doctor($slug=''){
		if($slug!=""){
			$data_doctor_id=$this->doctor_model->get_doctor_id_by_slug($slug);
			if(!empty($data_doctor_id)){
				$id_doctor=$data_doctor_id[0]->id;
				$this->page_data['banner'] 				= $this->doctor_model->get_banner('view-doctor');
				$this->page_data['data']= $this->doctor_model->doctor_detail_info($id_doctor);
				$this->page_data['services']= $this->doctor_model->get_doctor_services($id_doctor);
				$this->page_data['hospitals']= $this->doctor_model->get_doctor_hospitals($id_doctor);
				$this->page_data['map']= $this->doctor_model->get_doctor_map($id_doctor);
				$this->page_data['page_title']="doctor-profile";
				// $this->page_data['specialization']=$this->doctor_model->specification_by_doctor($id_doctor);

				$this->page_data['ads_v'] 			= $this->doctor_model->get_vertical_ads(5);
				$this->page_data['ads_h'] 			= $this->doctor_model->get_horizontal_ads(5);
                $this->page_data['active_menu']='doctors';
                //$this->page_data['page_title']="Doctor Detail";  //get_lang('doctor-profile');
				$this->page_data['page_name']='view_doctor';

				$this->load->view('frontend/index', $this->page_data);
			}else{
				$this->found_404();
			}
		}else{
			$this->found_404();
		}
	}
	
	

	
	
}
