<?php
/*	
 *	@author 	: Khouch Koeun
 *	date		: 24 April, 2016
 *	CamCyber Web-backend Management System
 *	http://camcyber.com
 *	info@camcyber.com
 */
if (!defined('BASEPATH')) exit('No direct script access allowed');
require_once 'Admin.php';
class Blog_categories extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Blog_categories_model', 'model');
        $this->page_data['term']='blog_categories';
    }
    function index(){
		$this->page_data['data']			=$this->model->get_blogs();
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']=$this->input->post('is_published');
		$data['slug']=$this->generate_slug('tbl_'.$this->page_data['term'], $data['en_name']);
		
		return $data;
	}

    	
		
	
	
}
