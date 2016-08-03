<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Partners_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_partners';
	}
	
	function get_data(){
		$this->db->select('f.id, f.name, f.image, f.is_published, f.modified_dt');
		$this->db->from($this->tbl.' as f');
		
		
		$key=isset($_GET['key']) ? $_GET['key'] : '';
		if($key!=''){
			$this->db->like('f.name', $key);
			//$this->db->or_like('f.kh_name', $key);
		}
		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';
		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('f.created_dt BETWEEN "'. date('Y-m-d H:i:s', strtotime($from)). '" and "'. date('Y-m-d H:i:s', strtotime($to)).'"');
		}
		$type=isset($_GET['type']) ? $_GET['type'] : 0;
		if($type==1){
			$this->db->where('type', 1);
		}
		if($type==2){
			$this->db->where('type', 2);
		}
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
		$key=isset($_GET['key']) ? $_GET['key'] : '';
		$type=isset($_GET['type']) ? $_GET['type'] : 0;
		if($key!=''){
			$this->db->like('en_title', $key);
			//$this->db->or_like('kh_name', $key);
		}
		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';
		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('created_dt BETWEEN "'. date('Y-m-d H:i:s', strtotime($from)). '" and "'. date('Y-m-d H:i:s', strtotime($to)).'"');
		}
		if($type==1){
			$this->db->where('type', 1);
		}
		if($type==2){
			$this->db->where('type', 2);
		}
		$data =$this->db->get()->result();
	   return count($data) ;
	}
}
