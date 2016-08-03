<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*	
 *	@author 	: Khouch Koeun
 *	date		: 06 september, 2015
 *	CamCyber Web-backend Management System
 *	http://camcyber.com
 *	info@camcyber.com
 */
require_once 'Admin.php';
class Contents extends Admin
{
    
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Contents_model', 'model');
        $this->page_data['term']='contents';
    }

    function form_data(){
		$data['en_content']=$this->input->post('en_content');
		$data['kh_content']=$this->input->post('kh_content');
		$data['is_published']=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	
	
	
	
}
