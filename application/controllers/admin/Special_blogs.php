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
class Special_blogs extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Special_blogs_model', 'model');
        $this->page_data['term']='special_blogs';
    }
   
	function index(){
		$this->page_data['data']			=$this->model->get_special_blogs();
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}
	public function form($action="create", $id=0){
		$this->page_data['action']			=$action;
		$this->page_data['id']				=$id;
		$this->page_data['special_blog']		=$this->model->gets('tbl_blogs');
		$this->page_data['active_page']		=$this->page_data['term'];
		$this->page_data['page']			='form';
		$this->load->view('admin/index', $this->page_data);

	}
	public function add_special_blog(){
		
		$this->model->add_special_blog();
		redirect(base_url().'admin/special_blogs', 'refresh');
	}
	public function update_special_status_of_blog($id, $val){
		$data['is_specialed']=$val;
		$this->db->where('id', $id);
		($this->db->update('tbl_blogs', $data));
		
	}
	public function remove_special_blog($id=0){
		$data['is_specialed']=0;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->model->update('tbl_blogs', $id, $data);
		redirect(base_url().'admin/special_blog', 'refresh');
	}
    	
		
	
	
}
