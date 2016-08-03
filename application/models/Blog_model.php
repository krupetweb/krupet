<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Blog_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();
    }
	 public function record_count($id_category) {
	 	
	 	$tag		=isset($_GET['tag']) ? $_GET['tag'] : "";
	 	$this->db->select('slug');
	 	if($tag!=""){
	 		$this->db->from('view_blog_for_search'); 
	 	}else{
	 		$this->db->from('tbl_blogs'); 
	 	}
	 	
	 	$this->db->where('id_category', $id_category);

	 	if($tag!=""){
	 		$this->db->like($this->lang.'_tag', $tag);
	 	}
	 	$this->db->group_by($this->lang.'_title');

	 	return sizeof($this->db->get()->result());
	   	
		
    }
	function get_blogs($id_category=1,$limit, $start){
		$tag		=isset($_GET['tag']) ? $_GET['tag'] : "";
		$this->db->select($this->lang.'_title as title, '.$this->lang.'_pre_content as pre_content, created_dt, image , slug');
		if($tag!=""){
	 		$this->db->from('view_blog_for_search'); 
	 	}else{
	 		$this->db->from('tbl_blogs'); 
	 	}
		$this->db->where('id_category=', $id_category);
		$this->db->limit($limit, $start);
		$this->db->group_by($this->lang.'_title');
		//$this->db->order_by('data_order', 'ASC');
		if($tag!=""){
	 		$this->db->like($this->lang.'_tag', $tag);
	 	}

		
		$data= $this->db->get()->result();
		return $data;
		
	}
	function get_related_blogs(){
		$this->db->select('id, '.$this->lang.'_title as title, modified_dt, image,slug');
		$this->db->from('tbl_blogs');
		$this->db->where('is_published', 1);
		$this->db->where('is_specialed', 1);
		$this->db->order_by('id', 'DESC');
		$this->db->limit(3);
		$query =$this->db->get();
		return $query->result();
	}
	
	function get_blog_detail($slug=0){
		$this->db->select(	'id, 
							'.$this->lang.'_title as title, 
							'.$this->lang.'_main_content as main_content, 
							modified_dt, image');
							
		$this->db->from('tbl_blogs');
		$this->db->where('slug', $slug);
		if($this->session->userdata('admin_login') != 1){// if not login check publish
			$this->db->where('is_published',1);
		}
		
		$query =$this->db->get();
		//echo $this->db->last_query();die;
		return $query->result();
	}
	function get_tags(){
		$this->db->select($this->lang.'_name as name');
		$this->db->from('tbl_tags');
		$this->db->where('is_published', 1);
		return $this->db->get()->result();
	}
	
	
}
