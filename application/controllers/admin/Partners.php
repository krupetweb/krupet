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
class Partners extends Admin
{
    
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Partners_model', 'model');
        $this->page_data['term']='partners';
    }

    function index(){
		
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$url=base_url()."admin/".$this->page_data['term']."?limit=".$limit;
		if(isset($_GET['from'])&&isset($_GET['to'])){
			$url.='&from='.$_GET['from'].'&to='.$_GET['to'];
		}
		if(isset($_GET['key'])){
			$url.='&key='.$_GET['key'];
		}
		if(isset($_GET['type'])){
			$url.='&type='.$_GET['type'];
		}


		$total_row=$this->model->record_count();

		$this->config_pagination($url, $total_row);

        $this->page_data["pagination"] = $this->pagination->create_links();

		$this->page_data['data']			=$this->model->get_data();
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}
	function get_valid_id_partner(){
		 $id_partner    =isset($_GET['id_partner'])?$_GET['id_partner']:'';
		 if(!is_numeric($id_partner)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_partner;
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
	 function form_partner(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_partner']		=0;
        //$this->page_data['categories']		=$this->model->gets('tbl_hospital_categories');
        //$this->page_data['types']		    =$this->model->gets('tbl_hospital_types');
        if($action=='update'){
            $id_partner   = $this->get_valid_id_partner();
            $this->page_data['id_partner']		=$id_partner;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_partner);
            //$this->session->set_userdata('tab_name', $this->page_data['data']->en_title);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}

	function form_data(){
		$data['name']=$this->input->post('name');
		$data['url']=$this->input->post('url');
		$data['description']=$this->input->post('description');
		$data['is_published']=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$data['type']=$this->input->post('type');
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		return $data;
	}
    function create_hospital(){
		 $data= $this->get_hospital_form_data();
		$id_hospital=$this->model->create('tbl_hospitals', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_hospitals?action=update&id_hospital='.$id_hospital, 'refresh');
	}

	
	
}
