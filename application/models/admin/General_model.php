<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');



class General_model extends CI_model {

    function __construct() {
        parent::__construct();

	}
	
	function get_new_health_consultant_requets(){
		$this->db->where(array('is_accepted'=>0 , 'is_deleted'=>0));
		return $this->db->count_all_results('tbl_health_consultants');

	}
	
	
}
