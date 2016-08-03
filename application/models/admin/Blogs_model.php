<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Blogs_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_blogs';
	}
	function get_data(){
		$this->db->select('f.id, f.en_title, f.image, f.is_published, f.is_featured, f.modified_dt');
		$this->db->from($this->tbl.' as f');
		
		
		$key=isset($_GET['key']) ? $_GET['key'] : '';
		if($key!=''){
			$this->db->like('f.en_title', $key);
			//$this->db->or_like('f.kh_name', $key);
		}
		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';
		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('f.created_dt BETWEEN "'. date('Y-m-d H:i:s', strtotime($from)). '" and "'. date('Y-m-d H:i:s', strtotime($to)).'"');
		}
		$type=isset($_GET['type']) ? $_GET['type'] : 0;
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10; 
		$page =isset($_GET['page']) ? $_GET['page'] : 0;

		//echo isset($_GET['page']) ? $_GET['page'] : 0; die;
        if($type!=0){
			$this->db->where('id_category', $type);
		}
		$this->db->limit($limit, $page);
		$this->db->order_by('id', 'DESC');
	   	return $this->db->get()->result();
		
	}
	function record_count(){
		$this->db->select('id');
		$this->db->from($this->tbl);
		$key=isset($_GET['key']) ? $_GET['key'] : '';
		$type=isset($_GET['type']) ? $_GET['type'] : 0;
		if($key!=''){
			$this->db->like('en_title', $key);
			//$this->db->or_like('kh_name', $key);
		}
		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';
		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('created_dt BETWEEN "'. date('Y-m-d H:i:s', strtotime($from)). '" and "'. date('Y-m-d H:i:s', strtotime($to)).'"');
		}
		if($type!=0){
			$this->db->where('id_category', $type);
		}
		$data =$this->db->get()->result();
	   return count($data) ;
	}
	function get_featured(){
		$this->db->select('*');
		$this->db->from('tbl_blogs');
		//$this->db->where('id', $id)
		$this->db->order_by('data_order', 'ASC');;
		$this->db->where('is_featured', 1);
		return $this->db->get()->result();
	}
	function get_featured_form(){
		$this->db->select('en_title');
		$this->db->from('tbl_blogs');
		return $this->db->get()->result();
	}
	//==========================================================================>>Feature Doctor
	function add_featured(){
		$blog_name=$this->input->post('blog_name');
		$data['is_featured']=1;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where(array('en_title'=>$blog_name));
		$this->db->update('tbl_blogs',$data);
	}
	public function get_types($id_category=0){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_blog_categories');
		return $this->db->get()->result();
		
	}
}
