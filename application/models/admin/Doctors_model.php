<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Doctors_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_doctors';

	}
    //===========================================================================>> Pagination Hospital
	 public function record_count() {
	   $limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$page=isset($_GET['page']) ? $_GET['page'] : 0;

		$category=isset($_GET['category']) ? $_GET['category'] : 0;
		$type=isset($_GET['type']) ? $_GET['type'] : 0;

		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';

		$province=isset($_GET['province']) ? $_GET['province'] : 0;
		$distrit=isset($_GET['distrit']) ? $_GET['distrit'] : 0;
		$specification=isset($_GET['specification']) ? $_GET['specification'] : 0;
		$key=isset($_GET['key']) ? $_GET['key'] : '';

		$this->db->select('h.id');
		$this->db->from('tbl_hospitals as h');
		if($province!=0){
			$this->db->join('tbl_hospital_branches as h_b', 'h_b.id_hospital=h.id');
		}
		$this->db->join('tbl_hospital_specialists as h_s', 'h_s.id_hospital=h.id', 'left');

		if($category!=0){
			$this->db->where('id_hospital_category', $category);
		}
		if($type!=0){
			$this->db->where('id_hospital_type', $type);
		}
		if($province!=0){
			$this->db->where('h_b.id_hospital', $province);
		}
		if($distrit!=0){
			$this->db->where('h_b.id_distrit', $distrit);
		}
		//$this->db->where('h_b.is_default', 1);
		if($specification!=0){
			$this->db->where('h_s.id_specialist', $specification);
		}
		if($key!=''){
			$this->db->like('h.en_name', $key);
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
    function get_doctors(){
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$page=isset($_GET['page']) ? $_GET['page'] : 0;

		$category=isset($_GET['category']) ? $_GET['category'] : 0;
		$type=isset($_GET['type']) ? $_GET['type'] : 0;

		$province=isset($_GET['province']) ? $_GET['province'] : 0;
		$distrit=isset($_GET['distrit']) ? $_GET['distrit'] : 0;
		$specification=isset($_GET['specification']) ? $_GET['specification'] : 0;

		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';

		$key=isset($_GET['key']) ? $_GET['key'] : '';

		$this->db->select('h.id, h.en_name, h.image, h.is_published, h.is_featured, h.slug');
		$this->db->from('tbl_doctors as h');
		if($province!=0){
			$this->db->join('tbl_hospital_branches as h_b', 'h_b.id_hospital=h.id');
		}
		
		$this->db->join('tbl_hospital_specialists as h_s', 'h_s.id_hospital=h.id', 'left');

		if($category!=0){
			$this->db->where('id_hospital_category', $category);
		}
		if($type!=0){
			$this->db->where('id_hospital_type', $type);
		}
		if($province!=0){
			$this->db->where('h_b.id_hospital', $province);
		}

		//$this->db->where('h_b.is_default', 1);
		if($distrit!=0){
			$this->db->where('h_b.id_distrit', $distrit);
		}
		if($specification!=0){
			$this->db->where('h_s.id_specialist', $specification);
		}
		if($key!=''){
			$this->db->like('h.en_name', $key);
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
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get Provinces & distgrits April 22, 2016
	public function get_provinces(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_provinces');
		return $this->db->get()->result();
	}
		//:::::::::::::::::::::::::::::::::::::::::::::::>> Get specifications April 23, 2016
	public function get_specifications($id_category=0){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_specialists');
		return $this->db->get()->result();
		
	}
	function update_doctor($id_doctor,$data){
		$this->db->where('id',$id_doctor);
		$this->db->update($this->tbl ,$data);
		$this->session->set_flashdata('flash_message' , 'Data has been updated');
		return $data;

	}
	function update_background($id_doctor,$data){
		$this->db->where('id',$id_doctor);
		$this->db->update($this->tbl ,$data);
		$this->session->set_flashdata('flash_message' , 'Data has been updated');
		return $data;

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
	function update_contact($id_doctor,$data){
		$this->db->where('id',$id_doctor);
		$this->db->update($this->tbl ,$data);
		$this->session->set_flashdata('flash_message' , 'Data has been updated');
		return $data;

	}
	

	function get_hospitals($id_doctor=0){
		$this->db->select('s.en_name as name,hs.id,s.image,hs.modified_dt');
		$this->db->from('tbl_hospital_doctors as hs');
		$this->db->join('tbl_hospitals as s','s.id = hs.id_hospital' );
		$this->db->where('id_doctor', $id_doctor);
		return $this->db->get()->result();
	}
	function get_hospital($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_doctors');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	public function get_data_hospitals(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_hospitals');
		return $this->db->get()->result();
	}


	public function get_data_services(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_services');
		return $this->db->get()->result();
	}

	function get_services($id_doctor=0){
		$this->db->select('s.en_name as name,hs.id,hs.price,hs.modified_dt,hs.is_published');
		$this->db->from('tbl_doctor_services as hs');
		$this->db->join('tbl_services as s','s.id = hs.id_service' );
		$this->db->where('id_doctor', $id_doctor);
		return $this->db->get()->result();
	}
	function get_service($id=0){
		$this->db->select('*');
		$this->db->from('tbl_doctor_services');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	function get_featured(){
		$this->db->select('*');
		$this->db->from('tbl_doctors');
		//$this->db->where('id', $id);
		$this->db->where('is_featured', 1);
		return $this->db->get()->result();
	}
}
