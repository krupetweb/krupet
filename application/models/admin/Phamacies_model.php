<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Phamacies_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_phamacies';

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
	function update_phamacy($id_phamacy,$data){
		$this->db->where('id',$id_phamacy);
		$this->db->update($this->tbl ,$data);
		$this->session->set_flashdata('flash_message' , 'Data has been updated');
		return $data;

	}
	//====================================================================== Doctors
	function get_galleries($id_phamacy=0){
		$this->db->select('image,en_title as name,hs.id,hs.modified_dt,is_published');
		$this->db->from('tbl_phamacy_galleries as hs');
		$this->db->where('id_phamacy', $id_phamacy);
		return $this->db->get()->result();
	}
	  function get_gallery($id=0){
		$this->db->select('*');
		$this->db->from('tbl_phamacy_galleries');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
}
