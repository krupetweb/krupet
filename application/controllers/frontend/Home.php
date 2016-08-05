<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Home extends Frontend_base {
	var $page_data=array();
	
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/home_model', 'model');
    }
	
	function index(){
		$page 		= isset($_GET['page']) ? $_GET['page'] : 0;
		$cat        = isset($_GET['cat'])?$_GET['cat']:"";
		//echo $cat ;die;
		$tag        = isset($_GET['tag'])?$_GET['tag']:"";
		$id_category = 1;
		$config["per_page"] = 10;
		$this->page_data['provinces'] 						= $this->model->get_provinces();
		$this->page_data['phone_types'] 					= $this->model->get_phone_types();

		$this->page_data['programes'] 						= $this->model->get_programes();
		$this->page_data['consultant_image'] 				= $this->model->get_health_consultant_images();
		$this->page_data['hospitals'] 						= $this->model->get_hospitals();
		$this->page_data['doctors'] 						= $this->model->get_doctors();
		
        $this->page_data['potential_partners']				= $this->model->get_potential_partners();
		$this->page_data['official_sponsors']				= $this->model->get_official_sponsors();
        $this->page_data['featured_blogs'] 					= $this->model->get_blogs();
		$this->page_data['ads_v'] 							= $this->model->get_vertical_ads(1);
		$this->page_data['page_name'] 						= 'home';
		$this->page_data["data"] = $this->model->get_data($config["per_page"], $page, $id_category, $tag);
		$this->load->view('frontend/index', $this->page_data);
	}
	function get_phones(){
		$type 		=	$this->input->post('type');
		$distrit	=	$this->input->post('distrit');
		$province 	=	$this->input->post('province');
		$this->page_data['data']=$this->model->get_phone($type, $province, $distrit);
		echo $this->load->view('frontend/pages/parts/hotline_search.php', $this->page_data, True);
	}

	
	
}
