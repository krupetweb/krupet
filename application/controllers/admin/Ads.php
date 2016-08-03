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
class Ads extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Ads_model', 'model');
        $this->page_data['term']='ads';
    }
  
	 function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['name']		=$this->input->post('name');
		$data['link']		=$this->input->post('link');
		$data['is_published']=$this->input->post('is_published');
		$v_image=$this->upload('v_image');
		if($v_image!=""){
			$data['v_image']=$v_image;
		}
		$h_image=$this->upload('h_image');
		if($h_image!=""){
			$data['h_image']=$h_image;
		}
		
		return $data;
	}

    	
		
	
	
}
