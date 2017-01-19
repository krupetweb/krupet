<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
class Search_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();
    }
	function get_hospital_categories(){
		$this->db->select($this->lang.'_name as name');
		$this->db->from('tbl_hospital_categories');
		$query = $this->db->get();
		return $query->result();
	}
	function get_provinces(){
		
		$this->db->select($this->lang.'_name as name, id');
		$this->db->from('tbl_provinces');
		$this->db->where('is_published', 1);
		return $this->db->get()->result();
	}
	function get_specifications($where=null){
		if($where==null){
            $where = array('is_published'=>1);
        }
		$this->db->select($this->lang.'_name as name');
		$this->db->from('tbl_specialists');
		$this->db->where($where);
		return $this->db->get()->result();
	}
	
}
