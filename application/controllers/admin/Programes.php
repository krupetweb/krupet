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
class Programes extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Programes_model', 'model');
        $this->page_data['term']='programes';
    }
  
	 function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['url']		=$this->input->post('url');
		$data['is_published']=$this->input->post('is_published');
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		
		return $data;
	}

    	
		
	
	
}
