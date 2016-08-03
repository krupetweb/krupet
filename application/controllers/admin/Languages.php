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
class Languages extends Admin
{
    
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Languages_model', 'model');
        $this->page_data['term']='languages';
    }
    //<<::::::::::::::::::::::::::::::::::>> Languages <<:::::::::::::::::::::::::::::::::>>
	function languages($id_checkedpoint=0){
        $this->page_data['active_page']     = 'languages';
        $this->page_data['page_name']       = 'languages';
        $this->page_data['page_title']      = 'languages';
		$this->page_data['link_type']      = 'normal';
        
        $this->page_data['languages']      = $this->admin_model->get('tbl_languages', 0, array('en','kh'));
        $this->load->view('backend/index', $this->page_data);
    }
    function update_languages($id_language=0){
		$data['en']=$this->input->post('en');
        $data['kh']=$this->input->post('kh');
		
        $this->db->where('id', $id_language);

        if($this->db->update('tbl_languages', $data)){
            echo 'Language has been updated!';
        }else{
            echo 'Language has NOT been updated!';
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
