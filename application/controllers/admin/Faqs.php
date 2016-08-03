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
class Faqs extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Faqs_model', 'model');
        $this->page_data['term']='faqs';
    }
  
	 function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_question']		=$this->input->post('en_question');
		$data['kh_question']		=$this->input->post('kh_question');
		$data['en_answer']		=$this->input->post('en_answer');
		$data['kh_answer']		=$this->input->post('kh_answer');
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}

    	
		
	
	
}
