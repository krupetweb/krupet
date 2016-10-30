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
class Doctors extends Admin
{
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Doctors_model', 'model');
        $this->page_data['term']='doctors';
    }
     //:::::::::::::::::::::::::::::::::::::::::::::::>> get_distrits_province_id April 22, 2016
    function get_distrits_province_id($id_province=0){
    	echo $this->model->get_distrits_province_id($id_province);
    }
	 //:::::::::::::::::::::::::::::::::::::::::::::::>> get_type_category_id April 22, 2016
    function get_type_category_id($id_category=0){
    	echo $this->model->get_doctor_types_category_id($id_category);
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
        $this->page_data["data"] = $this->model->get_doctors();
        //echo $this->db->last_query();

        //print_r($this->page_data["data"]); die;

        $this->page_data["paginations"] = $this->pagination->create_links();
		
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}

	function get_valid_id_doctor(){
		 $id_doctor    =isset($_GET['id_doctor'])?$_GET['id_doctor']:'';
		 if(!is_numeric($id_doctor)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_doctor;
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
	 //==========================================================================>> Hospital_gallery
	function get_valid_id_gallery(){
		 $id_gallery    =isset($_GET['id_gallery'])?$_GET['id_gallery']:'';
		 if(!is_numeric($id_gallery)){
		 	$id_doctor   = $this->get_valid_id_doctor();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_doctor='.$id_doctor, 'refresh');
		 }else{
		 	return $id_gallery;
		 }
	}
    function form_doctors(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_doctor']		=0;
        $this->page_data['sex']		=$this->model->gets('tbl_sex');
        $this->page_data['specialists']		    =$this->model->gets('tbl_specialists');
        if($action=='update'){
            $id_doctor   = $this->get_valid_id_doctor();
            $this->page_data['id_doctor']		=$id_doctor;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_doctor);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		// var_dump($this->page_data['data']);
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_doctor';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}

	function get_doctor_form_data(){
        $data['en_name']			=$this->input->post('en_name');
		$data['kh_name']			=$this->input->post('kh_name');
		$data['id_sex']				=$this->input->post('id_sex');
		$data['id_specialist']		=$this->input->post('id_specialist');
		$data['en_title']			=$this->input->post('en_title');
		$data['kh_title']			=$this->input->post('kh_title');
		$data['lat']				=$this->input->post('lat');
		$data['lon']				=$this->input->post('lon');
		$data['en_degree']			=$this->input->post('en_degree');
		$data['kh_degree']			=$this->input->post('kh_degree');
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

	function create_doctor(){
		 $data= $this->get_doctor_form_data();
		$id_doctor=$this->model->create('tbl_doctors', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_doctors?action=update&id_doctor='.$id_doctor, 'refresh');
	}
	function update_doctor(){
		$id_doctor = $this->get_valid_id_doctor();
		$data= $this->get_doctor_form_data();
		$this->model->update_doctor($id_doctor , $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_doctors?action=update&id_doctor='.$id_doctor, 'refresh');
	}

	function form_doctor_experien(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_doctor']		=0;
        //$this->page_data['sex']		=$this->model->gets('tbl_sex');
        //$this->page_data['specialists']		    =$this->model->gets('tbl_specialists');
        if($action=='update'){
            $id_doctor   = $this->get_valid_id_doctor();
            $this->page_data['id_doctor']		=$id_doctor;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_doctor);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='background_experien';
		$this->page_data['page']			='background_experien';
		$this->load->view('admin/index', $this->page_data);
	}
	function get_doctor_experien_form_data(){
        $data['en_experien']			=$this->input->post('en_experien');
		$data['kh_experien']			=$this->input->post('kh_experien');
		$data['en_background']				=$this->input->post('en_background');
		$data['kh_background']		=$this->input->post('kh_background');
		return $data;
	}
	function update_background(){
		$id_doctor = $this->get_valid_id_doctor();
		$data= $this->get_doctor_experien_form_data();
		$this->model->update_background($id_doctor , $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_doctor_experien?action=update&id_doctor='.$id_doctor, 'refresh');
	}

	function form_contact(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_doctor']		=0;
        $this->page_data['provinces']		=$this->model->gets('tbl_provinces');
        $this->page_data['distrits']		    =$this->model->gets('tbl_distrits');
        if($action=='update'){
            $id_doctor   = $this->get_valid_id_doctor();
            $this->page_data['id_doctor']		=$id_doctor;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_doctor);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='contact';
		$this->page_data['page']			='contact';
		$this->load->view('admin/index', $this->page_data);
	}
	//====================================================================>> Get distrit
	
	function get_contact_form_data(){
        $data['id_province']			=$this->input->post('id_province');
		$data['id_distrit']			=$this->input->post('id_distrit');
		$data['phone']				=$this->input->post('phone');
		$data['email']		        =$this->input->post('email');
		$data['hot_line']		        =$this->input->post('hot_line');
		return $data;
	}
	function update_contact(){
		$id_doctor = $this->get_valid_id_doctor();
		$data= $this->get_contact_form_data();
		$this->model->update_contact($id_doctor , $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_contact?action=update&id_doctor='.$id_doctor, 'refresh');
	}
    //==========================================================================>> Hospital_hospital
	function get_valid_id_hospital(){
		 $id_hospital    =isset($_GET['id_hospital'])?$_GET['id_hospital']:'';
		 if(!is_numeric($id_hospital)){
		 	$id_doctor   = $this->get_valid_id_doctor();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/hospitals?id_doctor='.$id_doctor, 'refresh');
		 }else{
		 	return $id_hospital;
		 }
	}
	function get_hospital_form_data($id_doctor=0){
		$data['id_doctor']	=$id_doctor;
		$data['id_hospital']		=$this->input->post('id_hospital');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	//==========================================================================>> Hospital_branch
	function hospitals(){
		$id_doctor    =isset($_GET['id_doctor'])?$_GET['id_doctor']:0;

		$this->page_data['id_doctor']		=$id_doctor;
		$this->db->where('id_doctor', $id_doctor);
		$this->page_data['data']			=$this->model->get_hospitals($id_doctor);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='hospitals';
		$this->page_data['active_nav']		='hospitals';
		$this->page_data['page_title']		='hospitals';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_hospitals(){
		$action         = $this->get_valid_action();
        $id_doctor    = $this->get_valid_id_doctor();
        $id_hospital      = $this->get_valid_id_hospital();

		$this->page_data['action']			=$action;
		$this->page_data['id_doctor']		=$id_doctor;
		if($action=='update'){
		    $data			=$this->model->get_hospital($id_hospital);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/hospitals?id_doctor='.$id_doctor, 'refresh');
		    }
		}
		$this->page_data["data_hospitals"]= $this->model->get_data_hospitals();
		$this->page_data['page']		    ='form_hospitals';
		$this->page_data['active_nav']		='form_hospitals';
		$this->page_data['active_page']		='hospitals';
	    $this->load->view('admin/index', $this->page_data);
	}
	function create_hospital(){
		$id_doctor    = $this->get_valid_id_doctor();
		$data=$this->get_hospital_form_data($id_doctor);
		$id_hospital=$this->model->create('tbl_hospital_doctors', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_hospitals?action=update&id_doctor='.$id_doctor.'&id_hospital='.$id_hospital, 'refresh');
	}
	function update_hospital(){
		$id_doctor    = $this->get_valid_id_doctor();
		$id_hospital      = $this->get_valid_id_hospital();
		$data=$this->get_hospital_form_data($id_doctor);
		$this->model->update('tbl_hospital_doctors', $id_hospital, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_hospitals?action=update&id_doctor='.$id_doctor.'&id_hospital='.$id_hospital, 'refresh');
	}
    function delete_hospital(){
    	$id_doctor    = $this->get_valid_id_doctor();
		$id_hospital      = $this->get_valid_id_hospital();
		$this->model->delete('tbl_hospital_doctors', $id_hospital);
		redirect(base_url().'admin/'.$this->page_data['term'].'/hospitals?id_doctor='.$id_doctor, 'refresh');
    }


    //==========================================================================>> Hospital_service
	function get_valid_id_service(){
		 $id_service    =isset($_GET['id_service'])?$_GET['id_service']:'';
		 if(!is_numeric($id_service)){
		 	$id_doctor   = $this->get_valid_id_hospital();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/services?id_doctor='.$id_doctor, 'refresh');
		 }else{
		 	return $id_service;
		 }
	}
	function get_service_form_data($id_doctor=0){
		$data['id_doctor']	=$id_doctor;
		// $data['price']		=$this->input->post('price');
		// $data['en_note']		=$this->input->post('en_note');
		// $data['kh_note']		=$this->input->post('kh_note');
		// $data['id_service']		=$this->input->post('id_service');
		$data['en_services']			=$this->input->post('en_services');
		$data['kh_services']			=$this->input->post('kh_services');
		$data['is_published']	=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	//==========================================================================>> Hospital_branch
	function services(){
		$id_doctor    =isset($_GET['id_doctor'])?$_GET['id_doctor']:0;

		$this->page_data['id_doctor']		=$id_doctor;
		$this->db->where('id_doctor', $id_doctor);
		$this->page_data['data']			=$this->model->get_services($id_doctor);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='services';
		$this->page_data['active_nav']		='services';
		$this->page_data['page_title']		='services';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_services(){
		$action         = $this->get_valid_action();
        $id_doctor    = $this->get_valid_id_doctor();
        // $id_service      = $this->get_valid_id_service();

		$this->page_data['action']			=$action;
		$this->page_data['id_doctor']		=$id_doctor;
		$data			=$this->model->get_services($id_doctor);
		// var_dump($data);die();
		if(isset($data->Id)){
			$action = 'update';
		}
		$this->page_data['data']		    =$data;
		$this->page_data['page']		    ='form_services';
		$this->page_data['active_nav']		='form_services';
		$this->page_data['active_page']		='doctors';
	    $this->load->view('admin/index', $this->page_data);
	}
	function create_service(){
		$id_doctor    = $this->get_valid_id_doctor();
		$data=$this->get_service_form_data($id_doctor);
		$id_service=$this->model->create('tbl_doctor_service', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_services?action=update&id_doctor='.$id_doctor.'&id_service='.$id_service, 'refresh');
	}
	function update_service(){
		$id_doctor    = $this->get_valid_id_doctor();
		$id_service      = $this->get_valid_id_service();
		$data=$this->get_service_form_data($id_doctor);
		$this->model->update('tbl_doctor_service', $id_service, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_services?action=update&id_doctor='.$id_doctor.'&id_service='.$id_service, 'refresh');
	}
    function delete_service(){
    	$id_doctor    = $this->get_valid_id_doctor();
		$id_service      = $this->get_valid_id_service();
		$this->model->delete('tbl_doctor_service', $id_service);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_services?id_doctor='.$id_doctor, 'refresh');
    }
    //==========================================================================>> Featured Blog
	public function featured(){
		//$this->db->where(array('tbl_blogs.is_featured'=>1));
		$this->page_data['data']			=$this->model->get_featured();
		
		$this->page_data['page']		='featured';
		$this->page_data['active_page']		='featured_doctors';
		$this->page_data['page_title']		='featured_hospital';
		$this->load->view('admin/index', $this->page_data);
	}
	public function remove_featured($id=0){
		$data['is_featured']=0;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->model->update('tbl_'.$this->page_data['term'].'', $id, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/featured', 'refresh');
	}
	function galleries(){
		$id_doctor    =isset($_GET['id_doctor'])?$_GET['id_doctor']:0;

		$this->page_data['id_doctor']		=$id_doctor;
		$this->db->where('id_doctor', $id_doctor);
		$this->page_data['data']			=$this->model->get_doctors_galleries($id_doctor);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='galleries';
		$this->page_data['active_nav']		='galleries';
		$this->page_data['page_title']		='galleries';
		$this->load->view('admin/index', $this->page_data);
	}
	function form_galleries(){
		$action         = $this->get_valid_action();
        $id_doctor    = $this->get_valid_id_doctor();
		$id_gallery      = $this->get_valid_id_gallery();
		$this->page_data['action']			=$action;
		$this->page_data['id_doctor']		=$id_doctor;
		
		// $this->page_data["doctors"]= $this->model->get_doctors();
		$this->page_data['page']		    ='form_galleries';
		$this->page_data['active_nav']		='form_galleries';
		$this->page_data['active_page']		=$this->page_data['term'];
	    $this->load->view('admin/index', $this->page_data);
		// var_dump($this->page_data);
	}
	function create_gallery(){
		$id_doctor    = $this->get_valid_id_doctor();
		$data=$this->get_gallery_form_data($id_doctor);
		$id_gallery=$this->model->create('tbl_doctors_galleries', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_doctor='.$id_doctor, 'refresh');
	}
	function update_gallery(){
		$id_doctor    = $this->get_valid_id_doctor();
		$id_gallery      = $this->get_valid_id_gallery();
		$data=$this->get_gallery_form_data($id_hospital);
		$this->model->update('tbl_doctors_galleries', $id_gallery, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_galleries?action=update&id_doctor='.$id_doctor.'&id_gallery='.$id_gallery, 'refresh');
	}
    function delete_gallery(){
    	$id_doctor    = $this->get_valid_id_doctor();
		$id_gallery      = $this->get_valid_id_gallery();
		$this->model->delete('tbl_doctors_galleries', $id_gallery);
		redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_doctor='.$id_doctor, 'refresh');
    }
	//==========================================================================>> Hospital_gallery
	
	function get_gallery_form_data($id_doctor=0){
		$data['id_doctor']	=$id_doctor;
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
	


}
