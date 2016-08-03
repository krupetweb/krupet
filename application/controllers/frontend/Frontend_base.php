<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Frontend_base extends CI_Controller {
	public $page_data=array();
	function __construct()
	{
		parent::__construct();
        $this->load->library('session');
		$this->load->database();
		$this->load->helper('functions');
		//$this->load->helper('multi_languages');
		$this->load->model('frontend/General_model', 'general');
        $this->page_data['blog_categories']= $this->general->get_blog_categories();
        //===================================>> language from url
		$this->page_data['lang']="kh";
		if($this->uri->segment(1)=='en'){
			$this->page_data['lang']="en";
		}
        
        //===================================>> Url config
		$this->page_data['src_url'] 		=	base_url();
		$this->page_data['lang_url'] 		=	$this->page_data['src_url'].$this->page_data['lang']."/";
		
		//===================================>> language labels from database
		$this->page_data['langs']			= 	$this->general->langs($this->page_data['lang']);

		//===================================>> Contact information
		$this->page_data['contact_info']	= 	$this->general->contact_info();
    }

	public function found_404(){
		$this->page_data['page_name']='404';
		$this->load->view('frontend/index', $this->page_data);
	}

	function get_distrits(){
		$id_province=$this->input->post('province');
		$this->general->get_distrits($id_province);
	}
	public function get_data_distrits(){
		$this->general->get_data_distrits();
	}
	
}
