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
class Hospital_categories extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Hospital_categories_model', 'model');
        $this->page_data['term']='hospital_categories';
    }
   function get_valid_id_hospital_category(){
		 $id_hospital_category    =isset($_GET['id_hospital_category'])?$_GET['id_hospital_category']:'';
		 if(!is_numeric($id_hospital_category)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_hospital_category;
		 }
	}
	function get_valid_action(){
		$action         =isset($_GET['action'])?$_GET['action']:'';
		if($action=="create" or $action=="update"){
            return $action;
		}else{
           redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		}
	}
    function form_hospital_categories(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_hospital_category']		=0;
        if($action=='update'){
            $id_hospital_category   = $this->get_valid_id_hospital_category();
            $this->page_data['id_hospital_category']		=$id_hospital_category;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_hospital_category);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_hospital_category';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	 function get_hospital_category_form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}
	function create_hospital_category(){
		 $data= $this->get_hospital_category_form_data();
		$id_hospital_category=$this->model->create('tbl_hospital_categories', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_hospital_categories?action=update&id_hospital_category='.$id_hospital_category, 'refresh');
	}
	function update_hospital_category(){
		$id_hospital_category = $this->get_valid_id_hospital_category();
		$data= $this->get_hospital_category_form_data();
		$this->model->update('tbl_hospital_categories', $id_hospital_category, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_hospital_categories?action=update&id_hospital_category='.$id_hospital_category, 'refresh');
	}


    //==========================================================================>> Hospital_type
	function get_valid_id_type(){
		 $id_type    =isset($_GET['id_type'])?$_GET['id_type']:'';
		 if(!is_numeric($id_type)){
		 	$id_hospital_category   = $this->get_valid_id_hospital_category();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/types?id_hospital_category='.$id_hospital_category, 'refresh');
		 }else{
		 	return $id_type;
		 }
	}
	function get_type_form_data($id_hospital_category=0){
		$data['id_hospital_category']	=$id_hospital_category;
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']	=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	function types(){
		$id_hospital_category   = $this->get_valid_id_hospital_category();

		$this->page_data['id_hospital_category']		=$id_hospital_category;
		$this->db->where('id_hospital_category', $id_hospital_category);
		$this->page_data['data']			=$this->model->get_types($id_hospital_category);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='types';
		$this->page_data['active_nav']		='types';
		$this->page_data['page_title']		='types';
		$this->load->view('admin/index', $this->page_data);
	}
	
	function form_types(){
		$action         = $this->get_valid_action();
        $id_hospital_category    = $this->get_valid_id_hospital_category();
        $id_type      = $this->get_valid_id_type();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital_category']		=$id_hospital_category;
		if($action=='update'){
		    $data			=$this->model->get_type($id_type);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/types?id_hospital_category='.$id_hospital_category, 'refresh');
		    }
		}
		//$this->page_data['provinces']		=$this->model->get_provinces();
		$this->page_data['page']		    ='form_types';
		$this->page_data['active_nav']		='form_types';
		$this->page_data['active_page']		='provinces';
	    $this->load->view('admin/index', $this->page_data);
	}

	
	function create_type(){
		$id_hospital_category    = $this->get_valid_id_hospital_category();
		$data=$this->get_type_form_data($id_hospital_category);
		$id_type=$this->model->create('tbl_hospital_types', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_types?action=update&id_hospital_category='.$id_hospital_category.'&id_type='.$id_type, 'refresh');
	}
	function update_type(){
		$id_hospital_category    = $this->get_valid_id_hospital_category();
		$id_type      = $this->get_valid_id_type();
		$data=$this->get_type_form_data($id_hospital_category);
		$this->model->update('tbl_hospital_types', $id_type, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_types?action=update&id_hospital_category='.$id_hospital_category.'&id_type='.$id_type, 'refresh');
	}
    function delete_type(){
    	$id_hospital_category    = $this->get_valid_id_hospital_category();
		$id_type      = $this->get_valid_id_type();
		$this->model->delete('tbl_hospital_types', $id_type);
		redirect(base_url().'admin/'.$this->page_data['term'].'/types?id_hospital_category='.$id_hospital_category, 'refresh');
    }
    	
		
	
	
}
