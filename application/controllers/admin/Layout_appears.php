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
class Layout_appears extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Layout_appears_model', 'model');
        $this->page_data['term']='layout_appears';
    }
    //==========================================================================>> Layout Appearance
	public function layout_appears($id_page=11){
		$this->db->order_by('name', 'ASC');
		$this->page_data['appeared_pages']			=$this->model->get('tbl_pages', 0, '*');
		$this->page_data['id_page']		=$id_page;
		$this->page_data['page_name']		='layout_appears';
		$this->page_data['active_page']		='layout_appears';
		$this->page_data['page_title']		='Layout Management';
		$this->load->view('backend/index', $this->page_data);
	}
	public function layout_appears_fillter($id_page=0){
		$this->page_data['id_page']			=	$id_page;
		$this->page_data['data']			= $this->model->get_layout_appears_fillter($id_page);
		$this->load->view('backend/admin/layout_appears_fillter_data', $this->page_data);
	}
	public function delete_appeared_layout($id_page=0, $id=0){
		$this->model->delete_forever('tbl_layout_appears', $id);
		redirect(base_url().'admin/layout_appears/'.$id_page, 'refresh');
	}
	//==========================================================================>> Services
    

    	
		
	
	
}
