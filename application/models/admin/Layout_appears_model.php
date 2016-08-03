<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Contents_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_contents';

	}
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Layout Fillter. Added Mr Koeun 13-03-2016
	function get_layout_appears_fillter($id_page=0){
		$this->db->select('l.name, a_p.id, a_p.is_published, a_p.modified_dt');
		$this->db->from('tbl_layouts as l');
		$this->db->join('tbl_layout_appears as a_p', 'a_p.id_layout=l.id');
		$this->db->where('a_p.id_page', $id_page);
		return $this->db->get()->result();
	}
	
}
