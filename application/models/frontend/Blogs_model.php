<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Blogs_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();
    }

	function get_id_category_by_slug($cat=''){
		if($cat!=""){
			$this->db->select('id');
			$this->db->from('tbl_blog_categories');
			$this->db->where('slug=', $cat);
			$data=$this->db->get()->row();
			if(count($data)>0){
				return $data->id;
			}else{
				return 1;
			}
		}else{
			return 1;
		}	
	}
	public function record_count($id_category=1, $tag='') {
	 	
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
	function get_data($limit, $start, $id_category, $tag){
		$this->db->select($this->lang.'_title as title, '.$this->lang.'_pre_content as pre_content, created_dt, image , slug');
		if($tag!=""){
	 		$this->db->from('view_blog_for_search'); 
	 	}else{
	 		$this->db->from('tbl_blogs'); 
	 	}
		$this->db->where('id_category=', $id_category);
		$this->db->limit($limit, $start);
		$this->db->group_by($this->lang.'_title');
		if($tag!=""){
	 		$this->db->like($this->lang.'_tag', $tag);
	 	}
		$data= $this->db->get()->result();
		return $data;
		
	}
	function get_related_blogs(){
		$id_category=$this->get_id_category_by_slug();
		$this->db->select('id, '.$this->lang.'_title as title, modified_dt, image,slug');
		$this->db->from('tbl_blogs');
		$this->db->where('is_published', 1);
		$this->db->where('is_specialed', 1);
		$this->db->order_by('id', 'DESC');
		$this->db->limit(3);
		$query =$this->db->get();
		return $query->result();
	}
	
	function get_blog_detail($slug=""){
        $id_category=$this->get_id_category_by_slug();
		$this->db->select(	'b.id, 
							b.'.$this->lang.'_title as title, 
							b.'.$this->lang.'_main_content as main_content, 
							b.modified_dt,b.image ,b_c.slug');
							
		$this->db->from('tbl_blogs as b');
		$this->db->join('tbl_blog_categories as b_c', 'b_c.id=b.id_category');
		$this->db->where('b.slug', $slug);
		if($this->session->userdata('admin_login') != 1){// if not login check publish
		$this->db->where('b.is_published',1);
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
