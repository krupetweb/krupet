<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Redirect extends CI_controller 
{
	
	function __construct(){
		parent::__construct();
        $this->load->library('session');
		$this->load->database();
		$this->load->helper('functions');
		$this->load->model('frontend/General_model', 'general');
        $this->page_data['blog_categories']= $this->general->get_blog_categories();
        //===================================>> language from url
		$this->page_data['lang'] 			=	"kh";
		if($this->uri->segment(1)=='en'){
				$this->page_data['lang'] 	=	"en";
		}
        
        //===================================>> Url config
		$this->page_data['src_url'] 		=	base_url();
		$this->page_data['lang_url'] 		=	$this->page_data['src_url'].$this->page_data['lang']."/";
		
		//===================================>> language labels from database
		$this->page_data['langs']			= 	$this->general->langs($this->page_data['lang']);

		//===================================>> Contact information
		$this->page_data['contact_info']	= 	$this->general->contact_info();
		
		$this->page_data['lang']="kh";
		if($this->uri->segment(1)=='en'){
			$this->page_data['lang']="en";
		}
		
    }
	
	
	public function index(){
		redirect(base_url().'kh');
	}
	public function found_404(){
		$this->page_data['page_name']='404';
		$this->load->view('frontend/index', $this->page_data);
	}
	
}
