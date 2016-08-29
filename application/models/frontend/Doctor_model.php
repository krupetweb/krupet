<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Doctor_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }
	
	function search_doctors($limit, $start){
		
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		
		$this->db->select(	$this->lang.'_name as name, 
							image, id, phone, email, slug,'.
							$this->lang.'_specification as specification, '.
							$this->lang.'_province as province,'.
							$this->lang.'_distrit as distrit'
						);

		$this->db->from('view_doctors_for_searching');
		$this->db->limit($limit, $start);
		
		if($key!=""){
			$this->db->like($this->lang.'_name', $key);
		}
		if($province!=""){
			$this->db->like($this->lang.'_province', $province);
		}
		if($distrit!=""){
			$this->db->like($this->lang.'_distrit', $distrit);
		}
		if($specification!=""){
			$this->db->like($this->lang.'_specification', $specification); 
		}
		
		$this->db->order_by('name', 'ASC');
		$this->db->group_by($this->lang.'_name'); 

		return $this->db->get()->result();
		
		
	}
	

	function record_count(){
		
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		
		
		$this->db->select('id');

		$this->db->from('view_doctors_for_searching');
		
		if($key!=""){
			$this->db->like($this->lang.'_name', $key);
		}
		if($province!=""){
			$this->db->like($this->lang.'_province', $province);
		}
		if($distrit!=""){
			$this->db->like($this->lang.'_distrit', $distrit);
		}
		if($specification!=""){
			$this->db->like($this->lang.'_specification', $specification); 
		}
		
		
		$this->db->group_by($this->lang.'_name'); 

		
		return sizeof($this->db->get()->result());
	}
	function doctor_detail_info($id_hospital=0){
		$this->db->select(			$this->lang.'_name as name, '.
									$this->lang.'_title as title, '.
									$this->lang.'_degree as degree, '.
									$this->lang.'_title as title, '.
									$this->lang.'_experience as experience, '.
									$this->lang.'_province as province, '.
									$this->lang.'_specification as specification, '.
									$this->lang.'_background as background, image, phone, email, slug');
		
		$this->db->from('view_doctors_for_searching');
		$this->db->where('id', $id_hospital);
		$query = $this->db->get();

		return $query->result();
	}


	function get_doctor_services($id_doctor){
		$this->db->select($this->lang.'_name as name, '.$this->lang.'_note as note, price');
		$this->db->from('view_doctor_services');
		$this->db->where('id_doctor', $id_doctor);
		$query = $this->db->get();
		return $query->result();
	}
	function get_doctor_hospitals($id_doctor){
		$this->db->select($this->lang.'_name as name, slug, id_hospital as id, image');
		$this->db->from('view_doctor_hospitals');
		$this->db->where('id_doctor', $id_doctor);
		//$query = $this->db->get();
		$query = $this->db->get();
		return $query->result();
	}
	function get_doctor_map($id_doctor=0){
		$this->db->select('id_hospital');
		$this->db->from('tbl_hospital_doctors');
		$this->db->where('id_doctor', $id_doctor);
		$this->db->limit(1);
		$data = $this->db->get()->result();
	
		if(!empty($data)){
			$id_hospital=$data[0]->id_hospital;
			
			$this->db->select($this->lang.'_name as name,  '.$this->lang.'_address as address, website, facebook_link, phone, email, website, lat, lon, working_hours');
			$this->db->from('tbl_hospital_branches');
			$this->db->where('id_hospital', $id_hospital);
			$this->db->where('is_default', 1);
			$query = $this->db->get();
			return $query->result();
			
		}
		return array();
			
	}
	function get_doctor_id_by_slug($slug){
		$this->db->select('id');
		$this->db->from('tbl_doctors');
		$this->db->where('slug',$slug);
		if($this->session->userdata('admin_login') != 1){// if not login check publish
			$this->db->where('is_published',1);
		}

		$query = $this->db->get();
		return $query->result();
	}
	
	
  
}
