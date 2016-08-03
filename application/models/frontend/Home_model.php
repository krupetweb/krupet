<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Home_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();
    }
	//===============================================>> Homwpage BY TONON
	public function get_programes(){
		$this->db->select('tbl_programes.id, image,url' );
		$this->db->from('tbl_programes');
		$this->db->where(array('is_published'=>1));
		$this->db->limit(4);
		$this->db->order_by('data_order', 'ASC');
		$query = $this->db->get();
		return $query->result();
	}
	//===============================================>> Homwpage GET hospitals
	public function get_hospitals(){
		$this->db->select('	h.id, 
							h.'.$this->lang.'_name as name,
							h.image, 
							h.slug,

							p.'.$this->lang.'_name as province, 
							d.'.$this->lang.'_name as distrit, 


							');
		$this->db->from('tbl_hospitals as h');
		$this->db->join('tbl_hospital_branches as b','b.id_hospital=h.id');
		$this->db->join('tbl_provinces as p','p.id=b.id_province');
		$this->db->join('tbl_distrits as d','d.id=b.id_distrit');
		$this->db->where(array('h.is_published'=>1,'h.is_featured'=>1,'p.is_published'=>1, 'b.is_default'=>1));
		$this->db->limit(12);
		$this->db->order_by('h.data_order', 'ASC');
		return $this->db->get()->result();

	}


	//===============================================>> Homwpage GET doctors BY TONON
	public function get_doctors(){
		$this->db->select('tbl_doctors.id,
							tbl_doctors.'.$this->lang.'_name as name,
							tbl_doctors.image,
							tbl_doctors.slug,
							tbl_specialists.'.$this->lang.'_name as specialists_name' );
		$this->db->from('tbl_doctors');
		$this->db->join('tbl_specialists','tbl_specialists.id=tbl_doctors.id_specialist');
		$this->db->where(array('tbl_doctors.is_published'=>1,'tbl_doctors.is_featured'=>1));
		$this->db->limit(12);
		$this->db->order_by('data_order', 'ASC');
		$data = $this->db->get()->result();
		return $data;
	}

	
	//===============================================>> Homwpage GET TIP BY TONON
	public function get_blogs(){
		$this->db->select('tbl_blogs.id,tbl_blogs.'.$this->lang.'_title as title,tbl_blogs.slug,tbl_blogs.'.$this->lang.'_pre_content as pre_content,tbl_blogs.image,tbl_blogs.modified_dt' );
		$this->db->from('tbl_blogs');
		$this->db->where(array('tbl_blogs.is_published'=>1,'tbl_blogs.is_featured'=>1));
		$this->db->limit(8);
		$this->db->order_by('data_order', 'ASC');
		$query = $this->db->get();
		return $query->result();
	}

	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get Health Consultant Image by Khouch Keoun on 13-03-2016
	public function get_health_consultant_images(){
		$this->db->select('image'); 
		$this->db->from('tbl_consultant_images');
		$this->db->where('is_active', 1);
		return $this->db->get()->result();
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get Hotline Image by Khouch Keoun on 13-03-2016
	public function get_phone_types(){
		$this->db->select($this->lang.'_name as name, id'); 
		$this->db->from('tbl_phone_types');
		$this->db->where('is_published', 1);
		$this->db->order_by('name', 'ASC');
		return $this->db->get()->result();
	}
	public function get_phone($type, $province, $distrit){
		
		$this->db->select('p.'.$this->lang.'_name as name, p.phone');
		$this->db->from('tbl_phones as p');
		$this->db->join('tbl_phone_types as t', 't.id=p.id_type');
		$this->db->join('tbl_provinces as pro', 'pro.id=p.id_province');
		$this->db->join('tbl_distrits as d', 'd.id=p.id_distrit');
		
		if($type!=0){
			$this->db->where('t.id', $type);
		}
		if($province!=0){
			$this->db->where('pro.id', $province);
			if($distrit!=0){
				$this->db->where('d.id', $distrit);
			}
		}
		
		$this->db->limit(25);
		$data = $this->db->get()->result();
    	return $data;

	}
}	
