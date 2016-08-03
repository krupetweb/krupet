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
class Services extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Services_model', 'model');
        $this->page_data['term']='services';
    }
    function form(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id']		=0;

		if($action=='update'){
            $id   = $this->get_valid_id();
            //$this->page_data['id']		=$id;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id);
            
        }
        $this->page_data["categories"]= $this->model->get_service_categores();
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
     
	 function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['id_service_category']		=$this->input->post('id_service_category');
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['en_description']		=$this->input->post('en_description');
		$data['kh_description']		=$this->input->post('kh_description');
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}

    	
		
	
	
}
