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
class Blogs extends Admin
{
    
	function __construct(){
		parent::__construct();
        $this->load->model('admin/Blogs_model', 'model');
        $this->page_data['term']='blogs';
    }

    function index(){
		$this->page_data["types"]= $this->model->get_types();
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
	function get_valid_id_blog(){
		 $id_blog    =isset($_GET['id_blog'])?$_GET['id_blog']:'';
		 if(!is_numeric($id_blog)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id_blog;
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
	 function form_blog(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id_blog']		=0;
        $this->page_data['categories']		=$this->model->gets('tbl_blog_categories');
        //$this->page_data['types']		    =$this->model->gets('tbl_hospital_types');
        if($action=='update'){
            $id_blog   = $this->get_valid_id_blog();
            $this->page_data['id_blog']		=$id_blog;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id_blog);
            $this->session->set_userdata('tab_name', $this->page_data['data']->en_title);
        }
		
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['active_nav']		='form';
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}

	function form_data(){
		$data['en_title']=$this->input->post('en_title');
		$data['kh_title']=$this->input->post('kh_title');
		$data['en_pre_content']=$this->input->post('en_pre_content');
		$data['kh_pre_content']=$this->input->post('kh_pre_content');
		$data['en_main_content']=$this->input->post('en_main_content');
		$data['kh_main_content']=$this->input->post('kh_main_content');
		$data['is_published']=$this->input->post('is_published');
		$data['is_featured']=$this->input->post('is_featured');
		$data['is_specialed']=$this->input->post('is_specialed');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		$data['slug']=$this->generate_slug('tbl_'.$this->page_data['term'], $data['en_title']);
		$data['id_category']=$this->input->post('id_category');
		$image=$this->upload('image');
		if($image!=""){
			$data['image']=$image;
		}
		return $data;
	}
    function create_blog(){
		$data= $this->form_data();
		$id_hospital=$this->model->create('tbl_hospitals', $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_blog?action=update&id_blog='.$id_blog, 'refresh');
	}
	function update_blog(){
		$id_blog = $this->get_valid_id_blog();
		$data= $this->form_data();
		$this->model->update('tbl_blogs', $id_blog, $data);
		redirect(base_url().'admin/'.$this->page_data['term'].'/form_blog?action=update&id_blog='.$id_blog, 'refresh');
	}
	//==========================================================================>> Featured Blog
	public function featured(){
		//$this->db->where(array('tbl_blogs.is_featured'=>1));
		$this->page_data['data']			=$this->model->get_featured();
		
		$this->page_data['page']		='featured_blog';
		$this->page_data['active_page']		='featured_blog';
		$this->page_data['page_title']		='featured_blog';
		$this->load->view('admin/index', $this->page_data);
	}
	public function remove_featured($id=0){
		$data['is_featured']=0;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->model->update('tbl_blogs', $id, $data);
		redirect(base_url().'admin/blogs/featured', 'refresh');
	}
	
	public function featured_form($id=0){
		$this->page_data['page_title']		='Add New Blog Featured Form';
		$this->db->where(array('tbl_blogs.is_featured'=>0));
		$this->page_data['featured_blog']			=$this->model->get_featured_form();
		
		$this->page_data['page']		='featured_blog_form';
		$this->page_data['active_page']		='featured_blog';
		
		$this->load->view('admin/index', $this->page_data);
	}
	
	public function add_featured(){
		$this->model->add_featured();
		redirect(base_url().'admin/blogs/featured', 'refresh');
	}
	
	
}
