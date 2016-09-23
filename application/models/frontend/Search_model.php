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
	
	function get_specifications($where=null){
		if($where==null){
            $where = array('is_published'=>1);
        }
		$this->db->select($this->lang.'_name as name,image');
		$this->db->from('tbl_specialists');
		$this->db->order_by($this->lang.'_name', 'ASC');
		$this->db->where($where);
		return $this->db->get()->result();
	}
	public function get_programes(){
		$this->db->select('tbl_programes.id, image,url' );
		$this->db->from('tbl_programes');
		$this->db->where(array('is_published'=>1));
		$this->db->limit(4);
		$this->db->order_by('data_order', 'ASC');
		$query = $this->db->get();
		return $query->result();
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
	
}
