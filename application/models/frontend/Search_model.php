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
		$this->db->select($this->lang.'_name as name');
		$this->db->from('tbl_provinces');
		$this->db->order_by($this->lang.'_name', 'ASC');
		return $this->db->get()->result();
		
	}
	function get_specifications($where=null){
		if($where==null){
            $where = array('is_published'=>1);
        }
		$this->db->select($this->lang.'_name as name,image');
		$this->db->from('tbl_specialists');
		$this->db->where($where);
		return $this->db->get()->result();
	}
	
}
