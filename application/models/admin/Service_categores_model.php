<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Service_categores_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_service_categores';

	}
		//:::::::::::::::::::::::::::::::::::::::::::::::>> Get hospital Category and Dstrit April 22, 2016
	public function get_service_categores(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_service_categores');
		return $this->db->get()->result();
	}
	
	
	
}
