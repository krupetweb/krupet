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
class Phamacies extends Admin
{
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Phamacies_model', 'model');
        $this->page_data['term']='phamacies';
    }
    //====================================================================>> Get distrit
	public function get_distrit(){
		$this->model->get_distrit();

	}
	function get_valid_id_phamacy(){
		 $id_phamacy    =isset($_GET['id_phamacy'])?$_GET['id_phamacy']:'';
		 if(!is_numeric($id_phamacy)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_phamacy;
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
	
    function form_phamacies(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_phamacy']		=0;
        $this->page_data['provinces']		=$this->model->gets('tbl_provinces');
        $this->page_data['distrits']		    =$this->model->gets('tbl_distrits');
        if($action=='update'){
            $id_phamacy   = $this->get_valid_id_phamacy();
            $this->page_data['id_phamacy']		=$id_phamacy;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_phamacy);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_name);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form_phamacies';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	function get_phamacy_form_data(){
        $data['en_name']			=$this->input->post('en_name');
		$data['kh_name']			=$this->input->post('kh_name');
		$data['id_province']				=$this->input->post('id_province');
		$data['id_distrit']		=$this->input->post('id_distrit');
		$data['en_address']			=$this->input->post('en_address');
		$data['kh_address']			=$this->input->post('kh_address');
		$data['en_background']			=$this->input->post('en_background');
		$data['kh_background']			=$this->input->post('kh_background');
		$data['phone']			        =$this->input->post('phone');
		$data['email']			        =$this->input->post('email');
		$data['working_hour']			=$this->input->post('working_hour');
		$data['website']			=$this->input->post('website');
		$data['lat']				=$this->input->post('lat');
		$data['lon']				=$this->input->post('lon');
		
		$data['is_published']		=$this->input->post('is_published');
		$data['modified_dt']		=date("Y-m-d H:i:s");
		$data['slug']=$this->generate_slug('tbl_'.$this->page_data['term'], $data['en_name']);
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		return $data;
	}

	function create_phamacy(){
		 $data= $this->get_phamacy_form_data();
		$id_phamacy=$this->model->create('tbl_phamacies', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_phamacies?action=update&id_phamacy='.$id_phamacy, 'refresh');
	}
	function update_phamacy(){
		$id_phamacy = $this->get_valid_id_phamacy();
		$data= $this->get_phamacy_form_data();
		$this->model->update_phamacy($id_phamacy , $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_phamacies?action=update&id_phamacy='.$id_phamacy, 'refresh');
	}
	 //==========================================================================>> Hospital_gallery
	function get_valid_id_gallery(){
		 $id_gallery    =isset($_GET['id_gallery'])?$_GET['id_gallery']:'';
		 if(!is_numeric($id_gallery)){
		 	$id_phamacy   = $this->get_valid_id_phamacy();
		 	redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_phamacy='.$id_phamacy, 'refresh');
		 }else{
		 	return $id_gallery;
		 }
	}
	function get_gallery_form_data($id_phamacy=0){
		$data['id_phamacy']	=$id_phamacy;
		$data['en_title']		=$this->input->post('en_title');
		$data['kh_title']		=$this->input->post('kh_title');
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
		$id_phamacy    =isset($_GET['id_phamacy'])?$_GET['id_phamacy']:0;

		$this->page_data['id_phamacy']		=$id_phamacy;
		$this->db->where('id_phamacy', $id_phamacy);
		$this->page_data['data']			=$this->model->get_galleries($id_phamacy);
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='galleries';
		$this->page_data['active_nav']		='galleries';
		$this->page_data['page_title']		='galleries';
		$this->load->view('admin/index', $this->page_data);
	}
    function form_galleries(){
		$action         = $this->get_valid_action();
        $id_phamacy    = $this->get_valid_id_phamacy();
        $id_gallery      = $this->get_valid_id_gallery();

		$this->page_data['action']			=$action;
		$this->page_data['id_phamacy']		=$id_phamacy;
		if($action=='update'){
		    $data			=$this->model->get_gallery($id_gallery);
		    if(!empty($data)){
		    	$this->page_data['data']			=$data;
		    	
		    }else{
                redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_phamacy='.$id_phamacy, 'refresh');
		    }
		}
		//$this->page_data["doctors"]= $this->model->get_doctors();
		$this->page_data['page']		    ='form_galleries';
		$this->page_data['active_nav']		='form_galleries';
		$this->page_data['active_page']		='phamcies';
	    $this->load->view('admin/index', $this->page_data);
	}
    function create_gallery(){
		$id_phamacy    = $this->get_valid_id_phamacy();
		$data=$this->get_gallery_form_data($id_phamacy);
		$id_gallery=$this->model->create('tbl_phamacy_galleries', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_galleries?action=update&id_phamacy='.$id_phamacy.'&id_gallery='.$id_gallery, 'refresh');
	}
	function update_gallery(){
		$id_phamacy    = $this->get_valid_id_phamacy();
		$id_gallery      = $this->get_valid_id_gallery();
		$data=$this->get_gallery_form_data($id_phamacy);
		$this->model->update('tbl_phamacy_galleries', $id_gallery, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_galleries?action=update&id_phamacy='.$id_phamacy.'&id_gallery='.$id_gallery, 'refresh');
	}
    function delete_gallery(){
    	$id_phamacy    = $this->get_valid_id_phamacy();
		$id_gallery      = $this->get_valid_id_gallery();
		$this->model->delete('tbl_phamacy_galleries', $id_gallery);
		redirect(base_url().'admin/'.$this->page_data['term'].'/galleries?id_phamacy='.$id_phamacy, 'refresh');
    }

    

}
