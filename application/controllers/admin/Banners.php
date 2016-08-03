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
class Banners extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Banners_model', 'model');
        $this->page_data['term']='pages';
    }
    //==========================================================================>> Page Content 
	function index(){
		$this->page_data['data']			=$this->model->gets('tbl_'.$this->page_data['term']);
		$this->page_data['active_page']='banners';
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}
	 function form_data(){
		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['is_banner_published']		=$this->input->post('is_banner_published');
		$banner=$this->upload('banner');
		if($banner!=""){
			$data['banner']=$banner;
		}
		return $data;
	}

    	
		
	
	
}
