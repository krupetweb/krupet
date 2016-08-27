<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Home extends Frontend_base {
	var $page_data=array();
	
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/home_model', 'model');
        $this->load->model('frontend/Search_model', 'mod_spc');
    }
	
	function index(){
		$page 		= isset($_GET['page']) ? $_GET['page'] : 0;
		$cat        = isset($_GET['cat'])?$_GET['cat']:"tips";
		$tag        = isset($_GET['tag'])?$_GET['tag']:"";

		if($tag!=""){
			$url.='?tag='.$tag;
		}
		$page_name="home";
		$url=$this->page_data['lang_url']."/".$page_name;  
		$id_category = 1;
		$config["base_url"] =$url;
        $config["total_rows"] = $this->model->record_count($id_category, $tag);
        $config["per_page"] = 10;
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
		$this->page_data['provinces'] 						= $this->mod_spc->get_provinces();
		
		$this->page_data['phone_types'] 					= $this->model->get_phone_types();

		$this->page_data['programes'] 						= $this->model->get_programes();
		$this->page_data['consultant_image'] 				= $this->model->get_health_consultant_images();
		$this->page_data['hospitals'] 						= $this->model->get_hospitals();
		$this->page_data['doctors'] 						= $this->model->get_doctors();
		$this->page_data['specifications'] 					= $this->mod_spc->get_specifications();
        $this->page_data['potential_partners']				= $this->model->get_potential_partners();
		$this->page_data['official_sponsors']				= $this->model->get_official_sponsors();
        $this->page_data['featured_blogs'] 					= $this->model->get_blogs();
		$this->page_data['ads_v'] 							= $this->model->get_vertical_ads(1);
		$this->page_data['page_name'] 						= 'home';
		$this->page_data["data"] 							= $this->model->get_data($config["per_page"], $page, $id_category, $tag);
		$this->page_data["get_tips_home_page"] 				= $this->model->get_tips_home_page( $tag);
		
		$this->page_data['categories']= $this->general->get_blog_categories();
		// echo  json_encode($this->page_data['provinces']);
		// exit();
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
