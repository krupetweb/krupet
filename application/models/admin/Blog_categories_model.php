<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Blog_categories_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_blog_categories';

	}
	function get_blogs(){
		$this->db->select('*');
		$this->db->from('tbl_blog_categories');
		$this->db->order_by('data_order', 'ASC');
		return $this->db->get()->result();
	}
	
	
	
}
