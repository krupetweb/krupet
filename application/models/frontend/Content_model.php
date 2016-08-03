<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Content_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();
    }
	//===================================================>> Content
	function get_content($alais=''){
		$this->db->select($this->lang.'_name as name, '.$this->lang.'_content as content');
		$this->db->from('tbl_contents');
		$this->db->where(array('alais'=>$alais));
		$query = $this->db->get();
		if(empty($query->result())){
			return '';
		}else return $query->result();
		
	}
	
	
}
