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
class Hospitals extends Admin
{
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Hospitals_model', 'model');
        $this->page_data['term']='hospitals';
		
    }
     //:::::::::::::::::::::::::::::::::::::::::::::::>> get_distrits_province_id April 22, 2016
    function get_distrits_province_id($id_province=0){
    	echo $this->model->get_distrits_province_id($id_province);
    }
	 //:::::::::::::::::::::::::::::::::::::::::::::::>> get_type_category_id April 22, 2016
    function get_type_category_id($id_category=0){
    	echo $this->model->get_hospital_types_category_id($id_category);
    } 
    public function get_type(){
		$this->model->get_type();

	}  
	//====================================================================>> Get distrit
	public function get_distrit(){
		$this->model->get_distrit();

	}
	
     //==========================================================================>> Hostpital
	function index(){
		$this->page_data["provinces"]= $this->model->get_provinces();
		$this->page_data["categories"]= $this->model->get_hospital_categories();
		$this->page_data["specifications"]= $this->model->get_specifications();
		
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$url=base_url()."admin/".$this->page_data['term']."?limit=".$limit;
		if(isset($_GET['province'])){
			$url.='&province='.$_GET['province'];
			if(isset($_GET['distrit'])){
				$url.='&distrit='.$_GET['distrit'];
			}
		}
		if(isset($_GET['category'])){
			$url.='&category='.$_GET['category'];
			if(isset($_GET['type'])){
				$url.='&type='.$_GET['type'];
			}
		}
		if(isset($_GET['specification'])){
			$url.='&specification='.$_GET['specification'];
		}
		
		if(isset($_GET['from'])&&isset($_GET['to'])){
			$url.='&from='.$_GET['from'].'&to='.$_GET['to'];
		}
		if(isset($_GET['key'])){
			$url.='&key='.$_GET['key'];
		}

		$this->config_pagination($url, $this->model->record_count());
        $this->page_data["data"] = $this->model->get_hospitals();
        //echo $this->db->last_query();

        //print_r($this->page_data["data"]); die;

        $this->page_data["paginations"] = $this->pagination->create_links();
		
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}

	function get_valid_id_hospital(){
		 $id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:'';
		 if(!is_numeric($id_hospital)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_hospital;
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
	
    function form_hospitals(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=0;
        $this->page_data['categories']		=$this->model->gets('tbl_hospital_categories');
        $this->page_data['types']		    =$this->model->gets('tbl_hospital_types');
        if($action=='update'){
            $id_hospital   = $this->get_valid_id_hospital();
            $this->page_data['id_hospital']		=$id_hospital;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_hospital);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_hospital';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	function get_hospital_form_data(){

		$data['en_name']			=$this->input->post('en_name');
		$data['kh_name']			=$this->input->post('kh_name');
		$data['id_hospital_type']	=$this->input->post('id_hospital_type');
		$data['id_hospital_category']=$this->input->post('id_hospital_category');
		$data['is_rating_code_required']=$this->input->post('is_rating_code_required');
		$data['en_background']		=$this->input->post('en_background');
		$data['kh_background']		=$this->input->post('kh_background');
		$data['en_director']		=$this->input->post('en_director');
		$data['kh_director']		=$this->input->post('kh_director');
		$data['is_published']		=$this->input->post('is_published');
		$data['is_featured']		=$this->input->post('is_featured');
		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['slug']=$this->generate_slug('tbl_'.$this->page_data['term'], $data['en_name']);
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
    function update_hospital(){
		$id_hospital = $this->get_valid_id_hospital();
		$data= $this->get_hospital_form_data();
		$this->model->update('tbl_hospitals', $id_hospital, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_hospitals?action=update&id_hospital='.$id_hospital, 'refresh');
	}
	//==========================================================================>> Hospital_branch
	function get_valid_id_branch(){
		 $id_branch    =isset($_GET['id_branch'])?$_GET['id_branch']:'';
		 if(!is_numeric($id_branch)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/branches?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_branch;
		 }
	}
	function get_branch_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['id_province']		=$this->input->post('id_province');
		$data['id_distrit']		=$this->input->post('id_distrit');
		$data['working_hours']	=$this->input->post('working_hours');
		$data['phone']			=$this->input->post('phone');
		$data['email']			=$this->input->post('email');
		$data['en_address']		=$this->input->post('en_address');
		$data['kh_address']		=$this->input->post('kh_address');
		$data['lat']			=$this->input->post('lat');
		$data['lon']			=$this->input->post('lon');
		$data['website']		=$this->input->post('website');
		$data['facebook_link']	=$this->input->post('facebook_link');
		$data['is_published']	=$this->input->post('is_published');
		$data['is_default']		=1;
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	function branches(){
		$id_hospital   = $this->get_valid_id_hospital();

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_hospital_branches($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='branches';
		$this->page_data['active_nav']		='branches';
		$this->page_data['page_title']		='branches';
		$this->load->view('admin/index', $this->page_data);
	}
	
	function form_branches(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_branch      = $this->get_valid_id_branch();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		if($action=='update'){
		    $data			=$this->model->get_hospital_branch($id_branch);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/branches?id_hospital='.$id_hospital, 'refresh');
		    }
		}
		$this->page_data['provinces']		=$this->model->get_provinces();
		$this->page_data['page']		    ='form_branches';
		$this->page_data['active_nav']		='form_branches';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}

	
	function create_branch(){
		$id_hospital    = $this->get_valid_id_hospital();
		$data=$this->get_branch_form_data($id_hospital);
		$id_branch=$this->model->create('tbl_hospital_branches', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_branches?action=update&id_hospital='.$id_hospital.'&id_branch='.$id_branch, 'refresh');
	}
	function update_branch(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_branch      = $this->get_valid_id_branch();
		$data=$this->get_branch_form_data($id_hospital);
		$this->model->update('tbl_hospital_branches', $id_branch, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_branches?action=update&id_hospital='.$id_hospital.'&id_branch='.$id_branch, 'refresh');
	}
    function delete_branch(){
    	$id_hospital    = $this->get_valid_id_hospital();
		$id_branch      = $this->get_valid_id_branch();
		$this->model->delete('tbl_hospital_branches', $id_branch);
		redirect(base_url().'admin/'.$this->page_data['term'].'/branches?id_hospital='.$id_hospital, 'refresh');
    }
	function update_default_status_of_branches(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_branch      = $this->get_valid_id_branch();
		
		$this->model->update_default_status_of_branches($id_hospital, $id_branch);
		redirect(base_url().'admin/'.$this->page_data['term'].'/branches?id_hospital='.$id_hospital, 'refresh');
	}
	//==========================================================================>> Hospital_service
	function get_valid_id_service(){
		 $id_service    =isset($_GET['id_service'])?$_GET['id_service']:'';
		 if(!is_numeric($id_service)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/services?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_service;
		 }
	}
	function get_service_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['price']		=$this->input->post('price');
		$data['id_service']		=$this->input->post('id_service');
		$data['id_department']		=$this->input->post('id_department');
		$data['is_published']	=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	//==========================================================================>> Hospital_branch
	function services(){
		$id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:0;

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_hospital_services($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='services';
		$this->page_data['active_nav']		='services';
		$this->page_data['page_title']		='services';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_services(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_service      = $this->get_valid_id_service();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		if($action=='update'){
		    $data			=$this->model->get_hospital_service($id_service);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/services?id_hospital='.$id_hospital, 'refresh');
		    }
		}
		$this->page_data["services"]= $this->model->get_services();
		//print_r($this->model->get_hospital_departments($id_hospital));die;
		$this->page_data["hospital_departments"]= $this->model->get_hospital_departments($id_hospital);
		$this->page_data['page']		    ='form_services';
		$this->page_data['active_nav']		='form_services';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
	function create_service(){
		$id_hospital    = $this->get_valid_id_hospital();
		$data=$this->get_service_form_data($id_hospital);
		$id_service=$this->model->create('tbl_hospital_services', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_services?action=update&id_hospital='.$id_hospital.'&id_service='.$id_service, 'refresh');
	}
	function update_service(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_service      = $this->get_valid_id_service();
		$data=$this->get_service_form_data($id_hospital);
		$this->model->update('tbl_hospital_services', $id_service, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_services?action=update&id_hospital='.$id_hospital.'&id_service='.$id_service, 'refresh');
	}
    function delete_service(){
    	$id_hospital    = $this->get_valid_id_hospital();
		$id_service      = $this->get_valid_id_service();
		$this->model->delete('tbl_hospital_services', $id_service);
		redirect(base_url().'admin/'.$this->page_data['term'].'/services?id_hospital='.$id_hospital, 'refresh');
    }
    //==========================================================================>> Hospital_specialists
	function get_valid_id_specialist(){
		 $id_specialist    =isset($_GET['id_specialist'])?$_GET['id_specialist']:'';
		 if(!is_numeric($id_specialist)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/specialists?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_specialist;
		 }
	}
	function get_specialist_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['id_specialist']		=$this->input->post('id_specialist');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	//==========================================================================>> Hospital_branch
	function specialists(){
		$id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:0;

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_hospital_specialists($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='specialists';
		$this->page_data['active_nav']		='specialists';
		$this->page_data['page_title']		='specialists';
		$this->load->view('admin/index', $this->page_data);
	}
    function form_specialists(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_specialist      = $this->get_valid_id_specialist();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		if($action=='update'){
		    $data			=$this->model->get_hospital_specialist($id_specialist);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/specialists?id_hospital='.$id_hospital, 'refresh');
		    }
		}
		$this->page_data["specialists"]= $this->model->get_specialists();
		$this->page_data['page']		    ='form_specialists';
		$this->page_data['active_nav']		='form_specialists';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}	
	function create_specialist(){
		$id_hospital    = $this->get_valid_id_hospital();
		$data=$this->get_specialist_form_data($id_hospital);
		$id_specialist=$this->model->create('tbl_hospital_specialists', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_specialists?action=update&id_hospital='.$id_hospital.'&id_specialist='.$id_specialist, 'refresh');
	}
	function update_specialist(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_specialist      = $this->get_valid_id_specialist();
		$data=$this->get_specialist_form_data($id_hospital);
		$this->model->update('tbl_hospital_specialists', $id_specialist, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_specialists?action=update&id_hospital='.$id_hospital.'&id_specialist='.$id_specialist, 'refresh');
	}
    function delete_specialist(){
    	$id_hospital    = $this->get_valid_id_hospital();
		$id_specialist      = $this->get_valid_id_specialist();
		$this->model->delete('tbl_hospital_specialists', $id_specialist);
		redirect(base_url().'admin/'.$this->page_data['term'].'/specialists?id_hospital='.$id_hospital, 'refresh');
    }	
	//==========================================================================>> Hospital_departments
	function get_valid_id_department(){
		 $id_department    =isset($_GET['id_department'])?$_GET['id_department']:'';
		 if(!is_numeric($id_department)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/departments?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_department;
		 }
	}
	function get_department_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['id_department']		=$this->input->post('id_department');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	//==========================================================================>> Hospital_Department
	function departments(){
		$id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:0;

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_hospital_departments($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='departments';
		$this->page_data['active_nav']		='departments';
		$this->page_data['page_title']		='departments';
		$this->load->view('admin/index', $this->page_data);
	}
    function form_departments(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_department      = $this->get_valid_id_department();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		if($action=='update'){
		    $data			=$this->model->get_hospital_department($id_department);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/specialists?id_hospital='.$id_hospital, 'refresh');
		    }
		}
		$this->page_data["departments"]= $this->model->get_departments();
		$this->page_data['page']		    ='form_departments';
		$this->page_data['active_nav']		='form_departments';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
	function create_department(){
		$id_hospital    = $this->get_valid_id_hospital();
		$data=$this->get_department_form_data($id_hospital);
		$id_department=$this->model->create('tbl_hospital_departments', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_departments?action=update&id_hospital='.$id_hospital.'&id_department='.$id_department, 'refresh');
	}
	function update_department(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_department      = $this->get_valid_id_department();
		$data=$this->get_department_form_data($id_hospital);
		$this->model->update('tbl_hospital_departments', $id_department, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_departments?action=update&id_hospital='.$id_hospital.'&id_department='.$id_department, 'refresh');
	}
    function delete_department(){
    	$id_hospital    = $this->get_valid_id_hospital();
		$id_department      = $this->get_valid_id_department();
		$this->model->delete('tbl_hospital_departments', $id_department);
		redirect(base_url().'admin/'.$this->page_data['term'].'/departments?id_hospital='.$id_hospital, 'refresh');
    }
    //==========================================================================>> Hospital_doctor
	function get_valid_id_doctor(){
		 $id_doctor    =isset($_GET['id_doctor'])?$_GET['id_doctor']:'';
		 if(!is_numeric($id_doctor)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/doctors?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_doctor;
		 }
	}
	function get_doctor_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['id_doctor']		=$this->input->post('id_doctor');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	//==========================================================================>> Hospital_Department
	function doctors(){
		$id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:0;

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_hospital_doctors($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='doctors';
		$this->page_data['active_nav']		='doctors';
		$this->page_data['page_title']		='doctors';
		$this->load->view('admin/index', $this->page_data);
	}
    function form_doctors(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_doctor      = $this->get_valid_id_doctor();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		if($action=='update'){
		    $data			=$this->model->get_hospital_doctor($id_doctor);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/doctors?id_hospital='.$id_hospital, 'refresh');
		    }
		}
		$this->page_data["doctors"]= $this->model->get_doctors();
		$this->page_data['page']		    ='form_doctors';
		$this->page_data['active_nav']		='form_doctors';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
    function create_doctor(){
		$id_hospital    = $this->get_valid_id_hospital();
		$data=$this->get_doctor_form_data($id_hospital);
		$id_doctor=$this->model->create('tbl_hospital_doctors', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_doctors?action=update&id_hospital='.$id_hospital.'&id_doctor='.$id_doctor, 'refresh');
	}
	function update_doctor(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_doctor      = $this->get_valid_id_doctor();
		$data=$this->get_doctor_form_data($id_hospital);
		$this->model->update('tbl_hospital_doctors', $id_doctor, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_doctors?action=update&id_hospital='.$id_hospital.'&id_doctor='.$id_doctor, 'refresh');
	}
    function delete_doctor(){
    	$id_hospital    = $this->get_valid_id_hospital();
		$id_doctor      = $this->get_valid_id_doctor();
		$this->model->delete('tbl_hospital_doctors', $id_doctor);
		redirect(base_url().'admin/'.$this->page_data['term'].'/doctors?id_hospital='.$id_hospital, 'refresh');
    }
     //==========================================================================>> Hospital_gallery
	function get_valid_id_gallery(){
		 $id_gallery    =isset($_GET['id_gallery'])?$_GET['id_gallery']:'';
		 if(!is_numeric($id_gallery)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_gallery;
		 }
	}
	function get_gallery_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']		=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		return $data;
	}
	//==========================================================================>> Hospital_Department
	function galleries(){
		$id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:0;

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_hospital_galleries($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='galleries';
		$this->page_data['active_nav']		='galleries';
		$this->page_data['page_title']		='galleries';
		$this->load->view('admin/index', $this->page_data);
	}
    function form_galleries(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_gallery      = $this->get_valid_id_gallery();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		if($action=='update'){
		    $data			=$this->model->get_hospital_gallery($id_gallery);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_hospital='.$id_hospital, 'refresh');
		    }
		}
		//$this->page_data["doctors"]= $this->model->get_doctors();
		$this->page_data['page']		    ='form_galleries';
		$this->page_data['active_nav']		='form_galleries';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
    function create_gallery(){
		$id_hospital    = $this->get_valid_id_hospital();
		$data=$this->get_gallery_form_data($id_hospital);
		$id_gallery=$this->model->create('tbl_hospital_galleries', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_gallerys?action=update&id_hospital='.$id_hospital.'&id_gallery='.$id_gallery, 'refresh');
	}
	function update_gallery(){
		$id_hospital    = $this->get_valid_id_hospital();
		$id_gallery      = $this->get_valid_id_gallery();
		$data=$this->get_gallery_form_data($id_hospital);
		$this->model->update('tbl_hospital_galleries', $id_gallery, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_galleries?action=update&id_hospital='.$id_hospital.'&id_gallery='.$id_gallery, 'refresh');
	}
    function delete_gallery(){
    	$id_hospital    = $this->get_valid_id_hospital();
		$id_gallery      = $this->get_valid_id_gallery();
		$this->model->delete('tbl_hospital_galleries', $id_gallery);
		redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_hospital='.$id_hospital, 'refresh');
    }
     //==========================================================================>> Hospital_gallery
	function get_valid_id_code(){
		 $id_code    =isset($_GET['id_code'])?$_GET['id_code']:'';
		 if(!is_numeric($id_code)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/codes?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_code;
		 }
	}
	function get_code_form_data($id_hospital=0){
		$data['id_hospital']	=$id_hospital;
		$data['en_name']		=$this->input->post('en_name');
		$data['kh_name']		=$this->input->post('kh_name');
		$data['is_published']		=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		return $data;
	}
	function codes(){
		$id_hospital    = $this->get_valid_id_hospital();
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;

		$url=base_url()."admin/".$this->page_data['term']."/codes?id_hospital=".$id_hospital."&limit=".$limit;
		
		if(isset($_GET['type'])){
			$url.='&type='.$_GET['type'];
		}
		
		if(isset($_GET['from'])&&isset($_GET['to'])){
			$url.='&from='.$_GET['from'].'&to='.$_GET['to'];
		}
		

		$this->config_pagination($url, $this->model->record_count_code());
        $this->page_data["data"] = $this->model->get_codes();
       
        
        $this->page_data['id_hospital']		=$id_hospital;
        $this->page_data["paginations"] = $this->pagination->create_links();
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='codes';
		$this->page_data['active_nav']		='codes';
		$this->page_data['page_title']		='codes';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_codes(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_code     = $this->get_valid_id_code();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		
		//$this->page_data["doctors"]= $this->model->get_doctors();
		$this->page_data['page']		    ='form_codes';
		$this->page_data['active_nav']		='form_codes';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
	//========================================= 15/03/2016
	function generate_codes(){
		$this->model->generate_codes();
	}
	//====================================================== Rating 
	function get_valid_id_rating(){
		 $id_rating    =isset($_GET['id_rating'])?$_GET['id_rating']:'';
		 if(!is_numeric($id_rating)){
		 	$id_hospital   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/ratings?id_hospital='.$id_hospital, 'refresh');
		 }else{
		 	return $id_rating;
		 }
	}
	//==========================================================================>> Hospital_Rating
	function ratings(){
		$id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:0;

		$this->page_data['id_hospital']		=$id_hospital;
		$this->db->where('id_hospital', $id_hospital);
		$this->page_data['data']			=$this->model->get_ratings($id_hospital);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='ratings';
		$this->page_data['active_nav']		='ratings';
		$this->page_data['page_title']		='ratings';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_ratings(){
		$action         = $this->get_valid_action();
        $id_hospital    = $this->get_valid_id_hospital();
        $id_rating     = $this->get_valid_id_rating();

		$this->page_data['action']			=$action;
		$this->page_data['id_hospital']		=$id_hospital;
		$data			=$this->model->get_hospital_rating($id_rating);
		//$this->page_data["doctors"]= $this->model->get_doctors();
		$this->page_data['page']		    ='form_codes';
		$this->page_data['active_nav']		='form_codes';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
    //==========================================================================>> Featured Blog
	public function featured(){
		//$this->db->where(array('tbl_blogs.is_featured'=>1));
		$this->page_data['data']			=$this->model->get_featured();
		
		$this->page_data['page']		='featured';
		$this->page_data['active_page']		='featured_hospitals';
		$this->page_data['page_title']		='featured_hospital';
		$this->load->view('admin/index', $this->page_data);
	}
	public function remove_featured($id=0){
		$data['is_featured']=0;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->model->update('tbl_'.$this->page_data['term'].'', $id, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/featured', 'refresh');
	}
	

	
}
