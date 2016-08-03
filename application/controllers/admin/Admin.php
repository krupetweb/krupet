<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*	
 *	@author 	: Khouch Koeun
 *	date		: 06 september, 2015
 *	CamCyber Web-backend Management System
 *	http://camcyber.com
 *	info@camcyber.com
 */

class Admin extends CI_Controller
{
    var $page_data=array();
    
	function __construct()
	{
		parent::__construct();
        $this->load->library('session');
		if ($this->session->userdata('admin_login') != 1) redirect(base_url(), 'refresh');
		$this->load->model('admin/general_model');
		$this->load->helper('form_field_generator');
		$this->load->database();
		$this->page_data['num_of_new_requets'] =$this->general_model->get_new_health_consultant_requets();
    }

    function publish($tbl, $id=0){
		$this->model->publish($tbl, $id);
	}
	function feature($id=0){
		$this->model->feature('tbl_'.$this->page_data['term'],$id);
	}
	 //<<::::::::::::::::::::::::::::::::::>> Slug <<:::::::::::::::::::::::::::::::::>>
    function generate_slug($tbl='', $text=''){
		  // replace non letter or digits by -
		  $text = preg_replace('~[^\\pL\d]+~u', '-', $text);
		  // trim
		  $text = trim($text, '-');
		  // transliterate
		  if (function_exists('iconv')){
			$text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
		  }
		  // lowercase
		  $text = strtolower($text);
		  // remove unwanted characters
		  $text = preg_replace('~[^-\w]+~', '', $text);
		  if (empty($text)){
			return 'n-a';
		  }
		  
		  $this->db->select('id, slug');
		  $this->db->from($tbl);
		  $this->db->where('slug', $text);
		  $data=$this->db->get()->row();
		 
		  if(!empty($data)){
		    return $data->id.'-'.$text;
		  }else{
			return $text;
		  }
		  
	}
	function get_valid_id(){
		 $id    =isset($_GET['id'])?$_GET['id']:'';
		 if(!is_numeric($id)){
		 	redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
		 }else{
		 	return $id;
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
	 //==========================================================================>> Page Content 
	function index(){
		$this->page_data['data']			=$this->model->gets('tbl_'.$this->page_data['term']);
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}
	function form(){
		$action         = $this->get_valid_action();
		
		$this->page_data['action']			=$action;
		$this->page_data['id']		=0;

		if($action=='update'){
            $id   = $this->get_valid_id();
            //$this->page_data['id']		=$id;
            $this->page_data['data']			=$this->model->get('tbl_'.$this->page_data['term'], $id);
            
        }
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);
	}
	function create(){
		$id=$this->model->create('tbl_'.$this->page_data['term'], $this->form_data());
		redirect(base_url().'admin/'.$this->page_data['term'].'/form?action=update&id='.$id, 'refresh');
	}
	function update(){
		$id = $this->get_valid_id();
		$this->model->update('tbl_'.$this->page_data['term'], $id, $this->form_data());
		redirect(base_url().'admin/'.$this->page_data['term'].'/form?action=update&id='.$id, 'refresh');
	}
	function delete($id=0){
		$this->model->delete('tbl_'.$this->page_data['term'],$id);
		redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
	}
	function upload($file_name=''){
		if(isset($_FILES[$file_name])){
			if($_FILES[$file_name]["error"]!=4){
				$uploaded_path='uploads/'.$this->page_data['term'].'/'.$this->page_data['term'].'_'.uniqid().".jpg"; 
				move_uploaded_file($_FILES[$file_name]['tmp_name'], $uploaded_path);
				return $uploaded_path;
			}else{
				return '';
			}
		}else{
			return '';
		}
	}

	function config_pagination($url, $total_rows){
		$config["base_url"] = $url;	
        $config["total_rows"] = $total_rows;
        $config["per_page"] = isset($_GET['limit']) ? $_GET['limit'] : 10;
        $config['query_string_segment'] = 'page';
		$config['enable_query_strings']=true;
        $config['page_query_string']=true;
		//config for bootstrap pagination class integration
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
		
        $this->pagination->initialize($config);

	}

	//<<::::::::::::::::::::::::::::::::::>> Update Data <<:::::::::::::::::::::::::::::::::>>
    function update_data_order($tbl){
		$this->load->model('admin/Data_order_model', 'model');
		$this->model->update_data_order($tbl);
	}

	

}
