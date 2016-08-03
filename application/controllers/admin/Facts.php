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
require_once 'Admin.php';
class Facts extends Admin
{
    
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Facts_model', 'model');
        $this->page_data['term']='facts';
    }
    //<<::::::::::::::::::::::::::::::::::>> Contact <<:::::::::::::::::::::::::::::::::>>
    function fact(){
        $this->page_data['active_page']     = 'facts';
        $this->page_data['page']      	    = 'list';
        $this->page_data['page_title']      = 'facts';
        
        $this->page_data['data']      = $this->admin_model->get('tbl_facts', 1, '*');
        $this->load->view('backend/index', $this->page_data);
    }
    function update_fact(){
        
        $data['total_project']		=$this->input->post('total_project');
		$data['website']			=$this->input->post('website');
		$data['ios']				=$this->input->post('ios');
		$data['android']			=$this->input->post('android');
		$data['system']				=$this->input->post('system');
		$data['social']				=$this->input->post('social');
		//print_r($data) ;
		//die;
       
        $data['modified_dt']            =date('Y-m-d H:i:s');
        $this->model->update('tbl_facts', 1, $data);
        redirect(base_url().'admin/facts/', 'refresh');
    }
    
    
	
	
	
	
}
