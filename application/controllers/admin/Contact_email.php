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
class Contact_email extends Admin
{
    
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Contact_email_model', 'model');
        $this->page_data['term']='contact_email';
    }
    //<<::::::::::::::::::::::::::::::::::>> Contact <<:::::::::::::::::::::::::::::::::>>
    function contact_email(){
        $this->page_data['active_page']     = 'contact_email';
        $this->page_data['page']       = 'list';
        $this->page_data['page_title']      = 'Contact Email';
        
        $this->page_data['data']      = $this->admin_model->get('tbl_contact_email', 1, '*');
        $this->load->view('backend/index', $this->page_data);
    }
    function edit_contact_email(){
        
        $data['host']                   =$this->input->post('host');
        $data['port']                   =$this->input->post('port');
        $data['security']               =$this->input->post('security');
        $data['user']                   =$this->input->post('user');
        $data['password']               =$this->input->post('password');
       
        $data['modified_dt']            =date('Y-m-d H:i:s');
        $this->model->update('tbl_contact_emails', 1, $data);
        redirect(base_url().'admin/contact_emails/', 'refresh');
    }
    function update($id=0){
        $this->model->update('tbl_'.$this->page_data['term'], $id, $this->form_data());
        redirect(base_url().'admin/'.$this->page_data['term'], 'refresh');
    }
    
    function form_data(){
		$data['host']                   =$this->input->post('host');
        $data['port']                   =$this->input->post('port');
        $data['security']               =$this->input->post('security');
        $data['user']                   =$this->input->post('user');
        $data['password']               =$this->input->post('password');
       
        $data['modified_dt']            =date('Y-m-d H:i:s');
		return $data;
	}
	
	
	
	
}
