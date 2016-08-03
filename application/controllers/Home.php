<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Home extends CI_controller 
{
	
	function __construct(){
		parent::__construct();
		$this->load->database();
        $this->load->model('frontend/Home_model', 'model');
    }
	
	public function index(){
		$this->page_data['facts'] 			= $this->model->get_facts();
		$this->page_data['speeches'] 			= $this->model->get_client_says();
		$this->page_data['features'] 			= $this->model->get_features();
		$this->page_data['page_name']			='index';
		$this->load->view('frontend/index', $this->page_data);
	}

	function get_projects($page=0){
		$this->page_data['data'] 			= $this->model->get_projects($page);
		if(empty($this->page_data['data'])){
			echo '';
		}else{
			echo $this->load->view('frontend/projects.php', $this->page_data, True);
		}
		
	}
	function get_features(){
		echo 'i love you'; die;
		$this->page_data['data'] 			= $this->model->get_features();
		echo $this->load->view('frontend/features.php', $this->page_data, True);
	}
	function submit_contact(){
		$data['name']=$this->input->post('name');
		$data['phone']=$this->input->post('phone');
		$data['email']=$this->input->post('email');
		$data['comment']=$this->input->post('comment');
		$data['created_dt']=Date('Y-m-d H:i:s');
		$data['modified_dt']=Date('Y-m-d H:i:s');
		$this->model->submit_contact($data);
		
	}
}
