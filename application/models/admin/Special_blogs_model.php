<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Special_blogs_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_blogs';

	}
	function get_special_blogs(){
        $this->db->select('*');
		$this->db->from('tbl_blogs');
		$this->db->where('is_specialed', 1);
		return $this->db->get()->result();
	}
	//==========================================================================>>Feature Doctor
	function add_special_blog(){
		$blog_name=$this->input->post('blog_name');
		$data['is_specialed']=1;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where(array('en_title'=>$blog_name));
		$this->db->update('tbl_blogs',$data);
	}
	
	
}
