<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Specialist_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }

    function search_hospitals($limit, $start){
		$specialist	=isset($_GET['specialist']) ? $_GET['specialist'] : "";
		$order 		=isset($_GET['order']) ? $_GET['order'] : 'normal';
		
		$this->db->select($this->lang.'_name as name, image, id,'.$this->lang.'_province, phone, email, '.$this->lang.'_address as address, '.$this->lang.'_background as background');
		$this->db->from('view_hospitals_for_searhing');
		$this->db->limit($limit, $start);
		
		if($order!="normal"){
			$this->db->like($this->lang.'_name', $order, 'after');
		}
		$this->db->like($this->lang.'_specialist', $specialist); 
		$this->db->group_by($this->lang.'_name'); 
		$this->db->group_by($this->lang.'_name'); 


		$query = $this->db->get();
		return $query->result();
		
	}
	

	function record_count_hospital(){
		
		$specialist	=isset($_GET['specialist']) ? $_GET['specialist'] : "";
		$order 		=isset($_GET['order']) ? $_GET['order'] : 'normal';
		$this->db->select('id');
		$this->db->from('view_hospitals_for_searhing');
		
		
		$this->db->like($this->lang.'_specialist', $specialist); 
		$this->db->group_by($this->lang.'_name'); 
		if($order!="normal"){
			$this->db->like($this->lang.'_name', $order, 'after');
		}
		$this->db->group_by($this->lang.'_name');
		$this->db->group_by($this->lang.'_name'); 
 

		$query = $this->db->get();
		return sizeof($query->result());
	}

	function search_doctors($limit, $start){
		
		$specialist	=isset($_GET['specialist']) ? $_GET['specialist'] : "";
		$order 		=isset($_GET['order']) ? $_GET['order'] : 'normal';
		
		
		$this->db->select(	$this->lang.'_name as name, 
							image, id,'.
							$this->lang.'_province as province, phone, email, '.
							$this->lang.'_specialist as specialist, '.
							$this->lang.'_background as background'
						);

		$this->db->from('view_doctors_for_searching');
		$this->db->limit($limit, $start);
		if($order!="normal"){
			$this->db->like($this->lang.'_name', $order, 'after');
		}
		$this->db->like($this->lang.'_specialist', $specialist); 

		

		$query = $this->db->get();
		return $query->result();
		
	}
	

	function record_count_doctor(){
		
		$specialist	=isset($_GET['specialist']) ? $_GET['specialist'] : "";
		$order 		=isset($_GET['order']) ? $_GET['order'] : 'normal';
		$this->db->select('id');
		$this->db->from('view_doctors_for_searching');
		
		$this->db->like($this->lang.'_specialist', $specialist); 
		if($order!="normal"){
			$this->db->like($this->lang.'_name', $order, 'after');
		}
		$this->db->order_by($this->lang.'_name', 'ASC');
		$this->db->group_by($this->lang.'_name'); 

		$query = $this->db->get();
		return sizeof($query->result());
	}
	
	

    
}
