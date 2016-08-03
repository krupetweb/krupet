<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Admin_model extends CI_Model {
	public $tbl;
    function __construct() {
        parent::__construct();
    }

	 //<<::::::::::::::::::::::::::::::::::>> Update published Stuats <<:::::::::::::::::::::::::::::::::>>
	 //<<::::::::::::::::::::::::::::::::::>> Update published Stuats <<:::::::::::::::::::::::::::::::::>>
	 
	public function publish($tbl, $id){
		$data['is_published']=$this->input->post("value");
		$this->db->where('id', $id);
		$this->db->update($tbl, $data); 
	}
	public function feature($tbl, $id){
		$data['is_featured']=$this->input->post("value");
		$this->db->where('id', $id);
		$this->db->update($tbl, $data); 
	}


	function gets($tbl){
		$this->db->select('*');
		$this->db->from($tbl);
		return $this->db->get()->result();
	}
	function get($tbl, $id=0){
		$this->db->select('*');
		$this->db->from($tbl);
		$this->db->where('id', $id);
		$data=$this->db->get()->row();
		if(!empty($data)){
			return $data;
		}else{
			redirect(base_url(), 'refresh');
		}
	}

	function update($tbl, $id=0, $data){
		$this->db->where('id', $id);
		if($this->db->update($tbl , $data)){
			$this->session->set_flashdata('flash_message' , 'Data has been updated');
		}
	}
	function create($tbl, $data){
		if($this->db->insert($tbl, $data)){
			$this->session->set_flashdata('flash_message' , 'Data has been created');
			$this->db->select('id');
			$this->db->from($tbl);
			$this->db->order_by('id','DESC');
			$this->db->limit(1);
			return $this->db->get()->row()->id;
		}else{
			return 0;
		}
	}
	function delete($tbl,$id=0){
		$this->db->where('id', $id);
		if($this->db->delete($tbl)){
			$this->session->set_flashdata('flash_message' , 'Data has been deleted');
		}
	}
	function delete_forever($tbl, $id){
		$this->db->where('id', $id);
		$this->db->delete($tbl);
		$this->session->set_flashdata('flash_message' , 'Data has been deleted.');
	}

	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get Provinces & distgrits April 22, 2016
	public function get_provinces(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_provinces');
		return $this->db->get()->result();
	}
	public function get_distrits_province_id($id_province=0){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_distrits');
		$this->db->where('id_province', $id_province);
		$data= $this->db->get()->result();
		$result='';
		$distrit=isset($_GET['distrit'])?$_GET['distrit']:0;
		$first='';
		$others='';

		foreach($data as $row){
			if($row->id==$distrit){
				$first='<option value='.$row->id.'>'.$row->name.'</option>';
			}else{
				$others.='<option value='.$row->id.'>'.$row->name.'</option>';
			}
		}
		return $first.'<option value=0>Select Distrit</option>'.$others;
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get hospital Category and Dstrit April 22, 2016
	public function get_hospital_categories(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_hospital_categories');
		return $this->db->get()->result();
	}
	public function get_hospital_types_category_id($id_category=0){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_hospital_types');
		$this->db->where('id_category', $id_category);
		$data= $this->db->get()->result();
		$result='';
		$type=isset($_GET['type'])?$_GET['type']:0;
		foreach($data as $row){
			if($row->id==$type){
				$first='<option value='.$row->id.'>'.$row->name.'</option>';
			}else{
				$others.='<option value='.$row->id.'>'.$row->name.'</option>';
			}
		}
		return $first.'<option value=0>Select Type</option>'.$others;
	}
	

}
