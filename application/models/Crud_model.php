<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');
class Crud_model extends CI_Model {

    function __construct() {
        parent::__construct();
    }

    function clear_cache() {
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }
	 //<<::::::::::::::::::::::::::::::::::>> Update published Stuats <<:::::::::::::::::::::::::::::::::>>
	 
	public function update_published_status($tbl, $id, $value){
		$data['is_published']=$value;
		$this->db->where('id', $id);
		$this->db->update($tbl, $data); 
		//return $this->db->last_query();
	}
	public function update_featured_status($tbl, $id, $value){
		$data['is_featured']=$value;
		$this->db->where('id', $id);
		$this->db->update($tbl, $data); 
		//return $this->db->last_query();
	}
	 //<<::::::::::::::::::::::::::::::::::>> Read <<:::::::::::::::::::::::::::::::::>>
	public function get($table, $id=0, $select=array('name', 'is_published', 'image')){
		
		if(is_array($select)){
			$this->db->select('id');
			for($i=0; $i<sizeof($select); $i++){
				$this->db->select($select[$i]);
			}
		}else{
			$this->db->select('*');
		}
		
		if($id!=0){
			$this->db->where(array('id'=>$id));
		}
		
		$this->db->order_by('id', 'DESC');
		$query = $this->db->get_where($table);
		
       return $query->result();
	}
	
	public function get_array_result($table, $id=0, $select=array('name', 'is_published', 'image')){
		if(is_array($select)){
			$this->db->select('id');
			for($i=0; $i<sizeof($select); $i++){
				$this->db->select($select[$i]);
			}
		}else{
			$this->db->select('*');
		}
		$where=array('is_deleted' => 0);
		if($id!=0) $where=array('id'=>$id, 'is_deleted' => 0);
		$this->db->order_by('id', 'DESC');
		$query = $this->db->get_where($table, $where);
        return $query->result_array();
	}
	 //<<::::::::::::::::::::::::::::::::::>> CUD functioin <<:::::::::::::::::::::::::::::::::>>
	public function create($tbl, $data){
		$this->db->insert($tbl, $data); 
		$query = $this->db->query('SELECT `id` FROM `'.$tbl.'` ORDER BY `id` DESC LIMIT 1');
		//$this->session->set_flashdata('flash_message' , 'Data has been added.');
		return $query->result()[0]->id;
	}
	public function update($tbl, $id, $data){
		
		$this->db->where('id', $id);
        $this->db->update($tbl, $data);
		$this->session->set_flashdata('flash_message' , 'Data has been updated');
		
	}
	public function delete($tbl, $id){
		$data['is_deleted']		=1;
		$data['is_published']	=0;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where('id', $id);
		$this->db->update($tbl, $data);
		$this->session->set_flashdata('flash_message' , 'Data has been deleted.');
	}
	public function delete_forever($tbl, $id){
		$this->db->where('id', $id);
		$this->db->delete($tbl);
		$this->session->set_flashdata('flash_message' , 'Data has been deleted.');
	}

}
