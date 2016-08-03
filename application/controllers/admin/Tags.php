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
class Tags extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Tags_model', 'model');
        $this->page_data['term']='tags';
    }
    
	 function form_data(){
	 	$data['en_name']		=$this->input->post('en_name');
	 	$data['kh_name']		=$this->input->post('kh_name');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}

    	
		
	
	
}
