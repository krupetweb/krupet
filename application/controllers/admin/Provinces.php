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
class Provinces extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Provinces_model', 'model');
        $this->page_data['term']='provinces';
    }

    function get_valid_id_province(){
		 $id_province    =isset($_GET['id_province'])?$_GET['id_province']:'';
		 if(!is_numeric($id_province)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_province;
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
    function form_provinces(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_province']		=0;
        if($action=='update'){
            $id_province   = $this->get_valid_id_province();
            $this->page_data['id_province']		=$id_province;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_province);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_province';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	 function get_province_form_data(){

		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['lat']		=$this->input->post('lat');
		$data['lon']		=$this->input->post('lon');
		$data['is_published']=$this->input->post('is_published');
		
		return $data;
	}
	function create_province(){
		 $data= $this->get_province_form_data();
		$id_province=$this->model->create('tbl_provinces', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_provinces?action=update&id_province='.$id_province, 'refresh');
	}
	function update_province(){
		$id_province = $this->get_valid_id_province();
		$data= $this->get_province_form_data();
		$this->model->update('tbl_provinces', $id_province, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_provinces?action=update&id_province='.$id_province, 'refresh');
	}
    //==========================================================================>> Hospital_distrit
	function get_valid_id_distrit(){
		 $id_distrit    =isset($_GET['id_distrit'])?$_GET['id_distrit']:'';
		 if(!is_numeric($id_distrit)){
		 	$id_province   = $this->get_valid_id_province();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/distrits?id_province='.$id_province, 'refresh');
		 }else{
		 	return $id_distrit;
		 }
	}
	function get_distrit_form_data($id_province=0){
		$data['id_province']	=$id_province;
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']	=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	function distrits(){
		$id_province   = $this->get_valid_id_province();

		$this->page_data['id_province']		=$id_province;
		$this->db->where('id_province', $id_province);
		$this->page_data['data']			=$this->model->get_distrits($id_province);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='distrits';
		$this->page_data['active_nav']		='distrits';
		$this->page_data['page_title']		='distrits';
		$this->load->view('admin/index', $this->page_data);
	}
	
	function form_distrits(){
		$action         = $this->get_valid_action();
        $id_province    = $this->get_valid_id_province();
        $id_distrit      = $this->get_valid_id_distrit();

		$this->page_data['action']			=$action;
		$this->page_data['id_province']		=$id_province;
		if($action=='update'){
		    $data			=$this->model->get_distrit($id_distrit);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/distrits?id_province='.$id_province, 'refresh');
		    }
		}
		//$this->page_data['provinces']		=$this->model->get_provinces();
		$this->page_data['page']		    ='form_distrits';
		$this->page_data['active_nav']		='form_distrits';
		$this->page_data['active_page']		='provinces';
	    $this->load->view('admin/index', $this->page_data);
	}

	
	function create_distrit(){
		$id_province    = $this->get_valid_id_province();
		$data=$this->get_distrit_form_data($id_province);
		$id_distrit=$this->model->create('tbl_distrits', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_distrits?action=update&id_province='.$id_province.'&id_distrit='.$id_distrit, 'refresh');
	}
	function update_distrit(){
		$id_province    = $this->get_valid_id_province();
		$id_distrit      = $this->get_valid_id_distrit();
		$data=$this->get_distrit_form_data($id_province);
		$this->model->update('tbl_distrits', $id_distrit, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_distrits?action=update&id_province='.$id_province.'&id_distrit='.$id_distrit, 'refresh');
	}
    function delete_distrit(){
    	$id_province    = $this->get_valid_id_province();
		$id_distrit      = $this->get_valid_id_distrit();
		$this->model->delete('tbl_distrits', $id_distrit);
		redirect(base_url().'admin/'.$this->page_data['term'].'/distrits?id_province='.$id_province, 'refresh');
    }

    	
		
	
	
}
