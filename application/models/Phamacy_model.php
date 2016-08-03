<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Phamacy_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }
	
	function search_phamacies($limit, $start){
		
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		
		$this->db->select($this->lang.'_name as name, image, slug, id, phone, email, '.$this->lang.'_province_name as province, '.$this->lang.'_distrit_name as distrit');
		$this->db->from('view_phamacy_for_search');
		$this->db->limit($limit, $start);
		
		if($key!=""){
			$this->db->like($this->lang.'_name', $key);
		}
		if($province!=""){
			$this->db->like($this->lang.'_province_name', $province);
		}
		if($distrit!=""){
			$this->db->like($this->lang.'_distrit_name', $distrit);
		}
		$this->db->order_by($this->lang.'_name', 'ASC');
		$this->db->group_by($this->lang.'_name'); 

		return $this->db->get()->result();
		
	}
	

	function record_count(){
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		
		$this->db->select('id');
		$this->db->from('view_phamacy_for_search');
		
		if($key!=""){
			$this->db->like($this->lang.'_name', $key);
		}
		if($province!=""){
			$this->db->like($this->lang.'_province_name', $province);
		}
		if($distrit!=""){
			$this->db->like($this->lang.'_distrit_name', $distrit);
		}
		$this->db->order_by($this->lang.'_name', 'ASC');
		$this->db->group_by($this->lang.'_name');

		return sizeof($this->db->get()->result());
	}
	function phamacy_detail_info($id_phamacy=0){
		$this->db->select(			$this->lang.'_name as name, '.
									$this->lang.'_background as background, image,slug,'.
									$this->lang.'_address as address, website, phone, email, website, lat, lon, working_hour'
									);
		
		$this->db->from('tbl_phamacies');
		$this->db->where('id', $id_phamacy);
		$query = $this->db->get();

		return $query->result();
	}
	function get_phamacy_galleries($id_phamacy){
		$this->db->select('id, '.$this->lang.'_title as name, image');
		$this->db->from('tbl_phamacy_galleries');
		$this->db->where('is_published', 1);
		$this->db->where('id_phamacy', $id_phamacy);
		$query = $this->db->get();
		return $query->result();
	}
	function get_phamacy_id_by_slug($slug){
		$this->db->select('id, '.$this->lang.'_name as name');
		$this->db->from('tbl_phamacies');
		$this->db->where('slug',$slug);
		$this->db->where('is_published',1);
		$query = $this->db->get();
		return $query->result();
	}
	function get_rating_questions(){
		$this->db->select($this->lang.'_name as name, id, '.$this->lang.'_question as question');
		$this->db->from('tbl_servay_questions');
		$this->db->where('is_published',1);
		$query = $this->db->get();
		return $query->result();
	}
	function get_phamacy_branches($id_phamacy=0){
		$this->db->select($this->lang.'_name as name,  '.$this->lang.'_address as address, website,phone, email, website, lat, lon, working_hour');
		$this->db->from('tbl_phamacies');
		$this->db->where('id', $id_phamacy);
		$query = $this->db->get();
		return $query->result();
	}


    
}
