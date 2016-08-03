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
class Client_says extends Admin
{
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Client_says_model', 'model');
        $this->page_data['term']='client_says';
    }
     //==========================================================================>> 
	function get_valid_id_fact(){
		 $id_client_say    =isset($_GET['id_client_say'])?$_GET['id_client_say']:'';
		 if(!is_numeric($id_client_say)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_fact;
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
	
    function form_client_says(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_fact']	     	=0;
		
        if($action=='update'){
            $id_client_say 						    = $this->get_valid_id_fact();
            $this->page_data['id_client_say']	    =$id_client_say;
            $this->page_data['data']				=$this->model->get('tbl_'.$this->page_data['term'], $id_client_say);
           // $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_client_say';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	function get_client_say_form_data(){
		
		$data['name']			=$this->input->post('name');
		$data['position']		=$this->input->post('position');
		$data['description']	=$this->input->post('description');
		$data['url']			=$this->input->post('url');
		$data['is_published']	=$this->input->post('is_published');
		$data['created_dt']		=date("Y-m-d H:i:s");
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		
		return $data;
	}
	function create_client_say(){
		 $data= $this->get_client_say_form_data();
		$id_client_say=$this->model->create('tbl_client_say', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_client_says?action=update&id_client_say='.$id_client_say, 'refresh');
	}
	function form_data(){

		$data['name']			=$this->input->post('name');
		$data['position']		=$this->input->post('position');
		$data['description']	=$this->input->post('description');
		$data['url']			=$this->input->post('url');
		$data['is_published']	=$this->input->post('is_published');
		$data['created_dt']		=date("Y-m-d H:i:s");
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		
		return $data;
	}
	
}
