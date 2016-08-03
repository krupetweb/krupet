<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Health_consultants_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_health_consultants';

	}
	function get_data(){
		$this->db->select('*');
		$this->db->from('tbl_health_consultants');
		$this->db->where(array('is_accepted'=>1, 'is_seen'=>1, 'is_deleted'=>0));
		$this->db->order_by('id', 'DESC');
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10; 
		$page =isset($_GET['page']) ? $_GET['page'] : 0;

		//echo isset($_GET['page']) ? $_GET['page'] : 0; die;

		$this->db->limit($limit, $page);
		$this->db->order_by('id', 'DESC');
	   	return $this->db->get()->result();
		
	}
	function record_count(){
		$this->db->select('id');
		$this->db->from($this->tbl);
		$data =$this->db->get()->result();
	   return count($data) ;
	}
	
	
	
}
