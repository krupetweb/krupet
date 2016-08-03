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
class Health_consultants extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Health_consultants_model', 'model');
        $this->page_data['term']='health_consultants';
    }
  
	public function news(){
		$this->db->where(array('is_deleted'=>0,  'is_accepted'=>0 ));
		$this->page_data['data']			=$this->model->gets('tbl_health_consultants');
		//print_r($this->page_data['data']);
		$this->page_data['active_page']='health_consultant_news';
		$this->page_data['page']			='news';
		$this->load->view('admin/index', $this->page_data);
	}
    function form(){
		$action         = $this->get_valid_action();
		$data['is_seen']=1;
		$id   = $this->get_valid_id();
		$this->model->update('tbl_health_consultants', $id, $data);

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
	function delete_health_consultant(){
		$id   = $this->get_valid_id();
		$data['is_deleted']=1;
		$data['deleted_dt']=date("Y-m-d H:i:s");
		$this->model->update('tbl_health_consultants', $id, $data);
		redirect(base_url().'admin/health_consultants/accepted', 'refresh');
	}
	public function update_acepted(){
		$id   = $this->get_valid_id();
		$data['is_accepted']=1;
		$data['is_seen']=1;
		$data['accepted_dt']=date("Y-m-d H:i:s");
		$data['seen_dt']=date("Y-m-d H:i:s");
		$this->model->update('tbl_health_consultants', $id, $data);
		$this->session->set_flashdata('flash_message' , 'Request has been accepted');
		redirect(base_url().'admin/health_consultants/news', 'refresh');
	}
    function accepted(){

		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$url=base_url()."admin/".$this->page_data['term']."/accepted?limit=".$limit;

		$this->config_pagination($url, $this->model->record_count());
        $this->page_data["pagination"] = $this->pagination->create_links();

		$this->page_data['data']			=$this->model->get_data();
		$this->page_data['active_page']="health_consultant_accepteds";
		$this->page_data['page']			='accepted';
		$this->load->view('admin/index', $this->page_data);
	}
    
		
	
	
}
