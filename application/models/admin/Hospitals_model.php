<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Hospitals_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_hospitals';

	}
//:::::::::::::::::::::::::::::::::::::::::::::::>> Get Provinces & distgrits April 22, 2016
	public function get_provinces(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_provinces');
		return $this->db->get()->result();
	}
	
	public function get_services(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_services');
		return $this->db->get()->result();
	}
	function get_hospital_branches($id_hospital=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_branches');
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
	function get_hospital_services($id_hospital=0){
		$this->db->select('s.en_name as name,hs.id,hs.price,hs.modified_dt,hs.is_published');
		$this->db->from('tbl_hospital_services as hs');
		$this->db->join('tbl_services as s','s.id = hs.id_service' );
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
	function get_hospital_service($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_services');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get hospital Category and Dstrit April 22, 2016
	public function get_hospital_categories(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_hospital_categories');
		return $this->db->get()->result();
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get specifications April 23, 2016
	public function get_specifications($id_category=0){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_specialists');
		return $this->db->get()->result();
		
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
    function get_hospitals(){
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
	function get_hospital_branch($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_branches');
		$this->db->where('id', $id);
		$data=$this->db->get()->row();
		return $data;
	}
	//========================================== Hospital Search
	public function hospital_search($key){
		$this->db->select('*');
		$this->db->from('tbl_hospitals');
		$this->db->like('en_name',$key); 
		$this->db->limit(50);
		$query =$this->db->get();
		return $query->result();
	}
	function update_default_status_of_branches($id_hospital, $id){
		$data['is_default']	= 0;
		$this->db->where('id_hospital', $id_hospital);
		$this->db->update('tbl_hospital_branches', $data);

		$data['is_default']	= 1;
		$this->db->where('id', $id);
		$this->db->update('tbl_hospital_branches', $data);
		//echo $this->db->last_query();die;
	}
	function get_type(){
		$id_hospital_category=$this->input->post('id_hospital_category');
		$id_hospital_type=$this->input->post('id_hospital_type');
		
		$this->db->select('id, en_name');
		$this->db->from('tbl_hospital_types');
		$this->db->order_by('en_name', "DESC");
		$this->db->where(array('is_published'=>1 ,'id_category'=>$id_hospital_category));
		
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
//====================================================================== Specialist
	function get_hospital_specialists($id_hospital=0){
		$this->db->select('s.en_name as name,hs.id,hs.modified_dt');
		$this->db->from('tbl_hospital_specialists as hs');
		$this->db->join('tbl_specialists as s','s.id = hs.id_specialist' );
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
    function get_hospital_specialist($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_specialists');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	public function get_specialists(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_specialists');
		return $this->db->get()->result();
	}
	//====================================================================== Department
	function get_hospital_departments($id_hospital=0){
		$this->db->select('s.en_name as name,hs.id,hs.modified_dt');
		$this->db->from('tbl_hospital_departments as hs');
		$this->db->join('tbl_departments as s','s.id = hs.id_department' );
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
    function get_hospital_department($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_departments');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	public function get_departments(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_departments');
		return $this->db->get()->result();
	}
	//====================================================================== Doctors
	function get_hospital_doctors($id_hospital=0){
		$this->db->select('s.image,s.en_name as name,hs.id,hs.modified_dt');
		$this->db->from('tbl_hospital_doctors as hs');
		$this->db->join('tbl_doctors as s','s.id = hs.id_doctor' );
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
    function get_hospital_doctor($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_doctors');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	public function get_doctors(){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_doctors');
		return $this->db->get()->result();
	}
	//====================================================================== Doctors
	function get_hospital_galleries($id_hospital=0){
		$this->db->select('image,en_name as name,hs.id,hs.modified_dt,is_published');
		$this->db->from('tbl_hospital_galleries as hs');
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
    function get_hospital_gallery($id=0){
		$this->db->select('*');
		$this->db->from('tbl_hospital_galleries');
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
	//====================================================================== Doctors
	function get_hospital_codes($id_hospital=0){
		$this->db->select('code,is_active,id,created_dt');
		$this->db->from('tbl_hospital_codes');
		$this->db->where('id_hospital', $id_hospital);
		$this->db->order_by('id','DESC');
		return $this->db->get()->result();
	}
	//========================================================================= generate_codes added by Tonon 15/03/2016
	function generate_codes(){
		$id_hospital=$this->input->post('id_hospital');
		$appr =$this->input->post('appr');
		$serial=$this->input->post('serial');
		$number=$this->input->post('number');
		$j=0;
		for($i=0; $i<$number; $i++){
			$data['id_hospital']=$id_hospital;
			$data['code']=$appr.$serial.rand(10000000000, 90000000000);
			$data['created_dt']=date('Y-m-d h:i:sa');

			if(count($this->db->query('Select id From tbl_hospital_codes Where code="'.$data['code'].'"')->row())<1){
				$this->db->insert('tbl_hospital_codes', $data);
				$j++;
			}

			
		}
		if($j==0){
			echo "No code is created.";
		}else{
			echo "There are ".$j." new codes have been generated";
		}
    	
    }
    //===========================================================================>> Pagination Hospital
	 public function record_count_code() {
	   $id_hospital=isset($_GET['id_hospital']) ? $_GET['id_hospital'] : 10;
		$type=isset($_GET['type']) ? $_GET['type'] : 'all';
		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';


		$this->db->select('id');
		$this->db->from('tbl_hospital_codes');
		$this->db->where('id_hospital', $id_hospital);

		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('created_dt BETWEEN "'. date('Y-m-d', strtotime($from)). '" and "'. date('Y-m-d', strtotime($to)).'"');
		}

		if($type=='rated'){
			$this->db->where('is_active', 1);
		}
		if($type=='not_rated'){
			$this->db->where('is_active', 0);
		}

		return count($this->db->get()->result());
		
    }
     function get_codes(){
        
        $id_hospital=isset($_GET['id_hospital']) ? $_GET['id_hospital'] : 10;
		$limit=isset($_GET['limit']) ? $_GET['limit'] : 10;
		$page=isset($_GET['page']) ? $_GET['page'] : 0;
		$type=isset($_GET['type']) ? $_GET['type'] : 'all';
		$from=isset($_GET['from']) ? $_GET['from'] : '';
		$to=isset($_GET['to']) ? $_GET['to'] : '';


		$this->db->select('id, code, is_active, created_dt');
		$this->db->from('tbl_hospital_codes');
		$this->db->where('id_hospital', $id_hospital);

		if($from!=''&&$to!=''){
			$from.=' 00:00:00';
			$to.' 23:59:59';
			$this->db->where('created_dt BETWEEN "'. date('Y-m-d', strtotime($from)). '" and "'. date('Y-m-d', strtotime($to)).'"');
		}

		if($type=='rated'){
			$this->db->where('is_active', 1);
		}
		if($type=='not_rated'){
			$this->db->where('is_active', 0);
		}

		$this->db->order_by('id', 'DESC');
        $this->db->limit($limit, $page);
		$data=$this->db->get()->result();

		//echo $this->db->last_query(); die;
		return $data;
		
	}
	//=======================================================Rating 
	function get_ratings($id_hospital=0){
		$this->db->select('d.en_name as name, h_r.code, h_r.arrived_date, h_r.created_dt, h_r.id, h_r.is_published');
		$this->db->from('tbl_departments as d');
		$this->db->Join('tbl_hospital_ratings as h_r', 'h_r.id_department=d.id');
		$this->db->where(array('d.is_published'=>1, 'h_r.id_hospital'=>$id_hospital));
		$this->db->order_by('h_r.created_dt', 'DESC');
		return $this->db->get()->result();
	}
	function get_rating_report($id_hospital=0){
		
		//number of rater
		$this->db->select('*');
		$this->db->from('tbl_hospital_ratings');
		$this->db->where('id_hospital', $id_hospital);
		$data=$this->db->get()->result();
		
		$num_of_recommends=0;
		$num_of_raters=0;
		$num_of_ratings=sizeof($data);

		$total_score=0;
        
        $num_of_score_0=0;
		$num_of_score_1=0;
		$num_of_score_2=0;
		$num_of_score_3=0;
		$num_of_score_4=0;
		$num_of_score_5=0;
		$num_of_score_6=0;
		$num_of_score_factors=0;

		if($num_of_ratings!=0){
			$id_rater=$data[0]->id_rater;
			$num_of_raters=1;
			foreach($data as $row){
                if($row->id_rater!=$id_rater) $num_of_raters++;
                if($row->is_recommended) $num_of_recommends++;
               $this->db->select('score');
               $this->db->from('tbl_hospital_rating_scores');
               $this->db->where('id_hospital_rating', $row->id);
               $data_score=$this->db->get()->result();
               foreach($data_score as $row){
                    if($row->score==0){
                        $num_of_score_0++;
                    }else if($row->score==1){
                        $num_of_score_1++;
                    }else if($row->score==2){
                        $num_of_score_2++;
                    }else if($row->score==3){
                        $num_of_score_3++;
                    }else if($row->score==4){
                        $num_of_score_4++;
                    }else if($row->score==5){
                        $num_of_score_5++;
                    }
                    $total_score+=$row->score;
                    $num_of_score_factors++;
               }
			}
		}

		$result['num_of_recommends']=$num_of_recommends;
		$result['num_of_raters']    =$num_of_raters;
		$result['num_of_ratings']   =$num_of_ratings;
		$result['total_score']      =$total_score;

		$result['num_of_score_0']=$num_of_score_0;
		$result['num_of_score_1']=$num_of_score_1;
		$result['num_of_score_2']=$num_of_score_2;
		$result['num_of_score_3']=$num_of_score_3;
		$result['num_of_score_4']=$num_of_score_4;
		$result['num_of_score_5']=$num_of_score_5;
		$result['num_of_score_6']=$num_of_score_6;
		$result['num_of_score_factors']=$num_of_score_factors;

		return $result;

        


	}
	function get_featured(){
		$this->db->select('*');
		$this->db->from('tbl_hospitals');
		//$this->db->where('id', $id);
		$this->db->where('is_featured', 1);
		return $this->db->get()->result();
	}
	
}
