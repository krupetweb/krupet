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
class Contact_information extends Admin
{
    
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Contact_information_model', 'model');
        $this->page_data['term']='contact_information';
    }
    function contact_information(){
    
        
        $this->page_data['active_page']     = 'list';
        $this->page_data['page']       = 'list';
        $this->page_data['page_title']      = 'Contacct Information';
        $this->db->order_by('title', 'ASC');
        $this->page_data['data']      = $this->model->get('tbl_contact_information', 0, '*');
        $this->load->view('backend/index', $this->page_data);
        
    }
    function update_contact_info(){
        $id=1;
        $data['content']=$this->input->post('content');
        $data['modified_dt']    =date('Y-m-d H:i:s');
        $this->db->where('id', $id);

        if($this->db->update('tbl_contact_informations', $data)){
            echo 'Contact information has been updated!';
        }else{
            echo 'Contact information has NOT been updated!';
        }
    }
    
    function form_data(){
		$data['en_content']=$this->input->post('en_content');
		$data['kh_content']=$this->input->post('kh_content');
		$data['is_published']=$this->input->post('is_published');
		$data['modified_dt']	=date("Y-m-d H:i:s");
		return $data;
	}
	
	
	
	
}
