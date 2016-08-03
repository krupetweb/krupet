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
class Projects extends Admin
{
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Projects_model', 'model');
        $this->page_data['term']='projects';
    }
     //==========================================================================>> Hostpital
	function index(){
	
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$url=base_url()."admin/".$this->page_data['term']."?limit=".$limit;
		
		if(isset($_GET['from'])&&isset($_GET['to'])){
			$url.='&from='.$_GET['from'].'&to='.$_GET['to'];
		}
		if(isset($_GET['key'])){
			$url.='&key='.$_GET['key'];
		}

		$this->config_pagination($url, $this->model->record_count());
        $this->page_data["data"] = $this->model->get_projects();
       
        $this->page_data["paginations"] = $this->pagination->create_links();
		
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}

	function get_valid_id_project(){
		 $id_project    =isset($_GET['id_project'])?$_GET['id_project']:'';
		 if(!is_numeric($id_project)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_project;
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
	
    function form_projects(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_project']		=0;
		
        if($action=='update'){
            $id_project   = $this->get_valid_id_project();
            $this->page_data['id_project']		=$id_project;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_project);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_project';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	function get_project_form_data(){

		$data['name']			=$this->input->post('name');
		$data['url']			=$this->input->post('url');
		$data['is_published']	=$this->input->post('is_published');
		$data['is_featured']     =$this->input->post('is_featured');
		$data['started_data']	=date("Y-m-d H:i:s");
		$data['finished_data']	=date("Y-m-d H:i:s");
		
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		$image_light=$this->upload('image_light');
		if($image_light!=""){
			$data['image_light']=$image_light;
		}
		return $data;
	}
	function create_project(){
		 $data= $this->get_project_form_data();
		$id_project=$this->model->create('tbl_projects', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_projects?action=update&id_project='.$id_project, 'refresh');
	}
	function form_data(){

		$data['name']			=$this->input->post('name');
		$data['url']			=$this->input->post('url');
		$data['is_published']	=$this->input->post('is_published');
		$data['is_featured']     =$this->input->post('is_featured');
		$data['started_data']	=date("Y-m-d H:i:s");
		$data['finished_data']	=date("Y-m-d H:i:s");
		
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		$image_light=$this->upload('image_light');
		if($image_light!=""){
			$data['image_light']=$image_light;
		}
		return $data;
	}
	
}
