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
class Phones extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Phones_model', 'model');
        $this->page_data['term']='phones';
    }
    function form($action="create", $id=0){
		$this->page_data['action']			=$action;
		$this->page_data['id']				=$id;
		$this->page_data["types"]= $this->model->get_types();
		$this->page_data["provinces"]= $this->model->get_provinces();
		$this->page_data["distrits"]= $this->model->get_distrits();
		$this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id);
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	 function form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['phone']		=$this->input->post('phone');
		$data['id_type']		=$this->input->post('id_type');
		$data['id_province']		=$this->input->post('id_province');
		$data['id_distrit']		=$this->input->post('id_distrit');
        $data['is_featured']=$this->input->post('is_featured');
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}
	//====================================================================>> Get distrit
	public function get_distrit(){
		$this->model->get_distrit();

	}

    	
		
	
	
}
