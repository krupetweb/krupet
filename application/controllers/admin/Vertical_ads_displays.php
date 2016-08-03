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
class Vertical_ads_displays extends Admin
{
    
	function __construct()
	{
		parent::__construct();
        $this->load->model('admin/Vertical_ads_displays_model', 'model');
        $this->page_data['term']='vertical_ads_displays';
    }
    function index(){
		$this->page_data['data']			=$this->model->gets('tbl_'.$this->page_data['term']);
		$this->page_data['active_page']=$this->page_data['term'];
		$this->page_data['page']			='list';
		$this->load->view('admin/index', $this->page_data);
	}

    	
		
	
	
}
