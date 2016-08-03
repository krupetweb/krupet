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
class Service_categores extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Service_categores_model', 'model');
        $this->page_data['term']='service_categores';
    }
  
	 function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}

    	
		
	
	
}
