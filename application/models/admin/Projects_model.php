<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Projects_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_projects';

	}
    //===========================================================================>> Pagination Hospital
	 public function record_count() {
	   $limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$page=isset($_GET['page']) ? $_GET['page'] : 0;

		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';

		$key=isset($_GET['key']) ? $_GET['key'] : '';

		$this->db->select('h.id');
		$this->db->from('tbl_projects as h');
		
		if($key!=''){
			$this->db->like('h.name', $key);
		}
		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('h.modified_dt BETWEEN "'. date('Y-m-d', strtotime($from)). '" and "'. date('Y-m-d', strtotime($to)).'"');
		}
		$this->db->group_by('h.id');
		$data =$this->db->get()->result();
	   return count($data) ;
		
    }
    function get_projects(){
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$page=isset($_GET['page']) ? $_GET['page'] : 0;

		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';

		$key=isset($_GET['key']) ? $_GET['key'] : '';

		$this->db->select('h.id, h.name, h.image, h.is_published, h.is_featured');
		$this->db->from('tbl_projects as h');
		
		if($key!=''){
			$this->db->like('h.name', $key);
		}
		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('h.modified_dt BETWEEN "'. date('Y-m-d', strtotime($from)). '" and "'. date('Y-m-d', strtotime($to)).'"');
		}

		$this->db->limit($limit, $page);
		$this->db->order_by('h.id', 'DESC');
		$this->db->group_by('h.id');

		$query =$this->db->get();
		//echo $this->db->last_query();die;
		 if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
		
	}
	
}
