<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Hospital_categories_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_hospital_categories';

	}
	function get_types($id_hospital_category=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_types');
		$this->db->where('id_hospital_category', $id_hospital_category);
		return $this->db->get()->result();
	}
	function get_type($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_types');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	function create_types($data){
		if($this->db->insert('tbl_hospital_types', $data)){
			$this->session->set_flashdata('flash_message' , 'Data has been created');

			$this->db->select('id');
			$this->db->from('tbl_hospital_types');
			$this->db->order_by('id','DESC');
			$this->db->limit(1);
			return $this->db->get()->row()->id;
		}else{
			return 0;
		}
	}
	function update_types($id=0, $data){
		$this->db->where('id', $id);
		if($this->db->update('tbl_hospital_types' , $data)){
			$this->session->set_flashdata('flash_message' , 'Data has been updated');
		}
	}
	
	
	
}
