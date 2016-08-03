<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Provinces_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_provinces';

	}
	function get_distrits($id_province=0){
		$this->db->select('*');
		$this->db->from('tbl_distrits');
		$this->db->where('id_province', $id_province);
		return $this->db->get()->result();
	}
	function get_distrit($id_distrit=0){
		$this->db->select('*');
		$this->db->from('tbl_distrits');
		$this->db->where('id', $id_distrit);
		return $this->db->get()->row();
	}
	function create_distrits($data){
		if($this->db->insert('tbl_distrits', $data)){
			$this->session->set_flashdata('flash_message' , 'Data has been created');

			$this->db->select('id');
			$this->db->from('tbl_distrits');
			$this->db->order_by('id','DESC');
			$this->db->limit(1);
			return $this->db->get()->row()->id;
		}else{
			return 0;
		}
	}
	function update_distrits($id=0, $data){
		$this->db->where('id', $id);
		if($this->db->update('tbl_distrits' , $data)){
			$this->session->set_flashdata('flash_message' , 'Data has been updated');
		}
	}
	
	
	
}
