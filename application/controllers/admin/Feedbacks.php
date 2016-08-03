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
class Feedbacks extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Feedbacks_model', 'model');
        $this->page_data['term']='feedbacks';
    }
  
	 function form_data(){

		$data['review']		=$this->input->post('review');
		
		return $data;
	}

    	
		
	
	
}
