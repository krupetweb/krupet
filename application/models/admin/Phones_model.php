<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Phones_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_phones';

	}
			//:::::::::::::::::::::::::::::::::::::::::::::::>> Get hospital Category and Dstrit April 22, 2016
	public function get_types(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_phone_types');
		return $this->db->get()->result();
	}
			//:::::::::::::::::::::::::::::::::::::::::::::::>> Get hospital Category and Dstrit April 22, 2016
	public function get_provinces(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_provinces');
		return $this->db->get()->result();
	}
			//:::::::::::::::::::::::::::::::::::::::::::::::>> Get hospital Category and Dstrit April 22, 2016
	public function get_distrits(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_distrits');
		return $this->db->get()->result();
	}
	//::::::::::::::::::::::::::::::::::::::::::::::::>> get_distrit
	function get_distrit(){
		$id_province=$this->input->post('id_province');
		$id_distrit=$this->input->post('id_distrit');
		
		$this->db->select('id, en_name');
		$this->db->from('tbl_distrits');
		$this->db->order_by('en_name', "DESC");
		$this->db->where(array('is_published'=>1 ,'id_province'=>$id_province));
		
		$data= $this->db->get()->result();

		$first='';
		$other='';
		foreach($data as $row){
			if($row->id==$id_distrit){
				$first.='<option value="'.$row->id.'">'.$row->en_name.'</option>';
			}else{
				$other.='<option value="'.$row->id.'">'.$row->en_name.'</option>';
			}
			
		}
		echo $first.$other;
	}
	
	
	
}
