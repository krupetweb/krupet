<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Crud_model.php');

class Admin_model extends Crud_model {

    function __construct() {
        parent::__construct();
		if ($this->session->userdata('admin_login') != 1) redirect(base_url(), 'refresh');
	}
	//==========================================================================>> Hostpital Services
	function get_hospital_services($id_hospital=0){
		$this->db->select('h_s.id, d.en_name as department, s.en_name as service, h_s.price, h_s.en_note,  h_s.modified_dt');
		$this->db->from('tbl_hospital_services as h_s');
		$this->db->join('tbl_services as s', 's.id=h_s.id_service');
		$this->db->join('tbl_departments as d', 'd.id=h_s.id_department');
		$this->db->where(array('h_s.id_hospital'=>$id_hospital));
		$this->db->order_by ("h_s.modified_dt","DESC");
		return $this->db->get()->result();
	}
	//==========================================================================>> Hostpital Department
	function get_hospital_departments($id_hospital=0){
		$this->db->select('tbl_hospital_departments.id, tbl_departments.id as id_department, tbl_departments.en_name, tbl_hospital_departments.modified_dt');
		$this->db->from('tbl_hospital_departments');
		$this->db->join('tbl_departments', 'tbl_departments.id=tbl_hospital_departments.id_department');
		$this->db->where(array('tbl_hospital_departments.id_hospital'=>$id_hospital));
		$this->db->order_by ("tbl_hospital_departments.modified_dt","DESC");
		$query=$this->db->get();
		
		return $query->result();
	}
	//==========================================================================>> Hostpital Specialist
	function get_hospital_specialists($id_hospital=0){
		$this->db->select('tbl_hospital_specialists.id, tbl_specialists.en_name, tbl_hospital_specialists.modified_dt');
		$this->db->from('tbl_hospital_specialists');
		$this->db->join('tbl_specialists', 'tbl_specialists.id=tbl_hospital_specialists.id_specialist');
		$this->db->where(array('tbl_hospital_specialists.id_hospital'=>$id_hospital));
		$this->db->order_by ("tbl_hospital_specialists.modified_dt","DESC");
		$query=$this->db->get();
		
		return $query->result();
	}
	//==========================================================================>> Hostpital Doctor
	function get_hospital_doctors($id_hospital=0){
		$this->db->select('tbl_hospital_doctors.id, tbl_doctors.en_name,tbl_doctors.image, tbl_hospital_doctors.modified_dt, tbl_hospital_doctors.id_doctor');
		$this->db->from('tbl_hospital_doctors');
		$this->db->join('tbl_doctors', 'tbl_doctors.id=tbl_hospital_doctors.id_doctor');
		$this->db->where(array('tbl_hospital_doctors.id_hospital'=>$id_hospital));
		$this->db->order_by ("tbl_hospital_doctors.modified_dt","DESC");
		$query=$this->db->get();
		return $query->result();
	}
	//==========================================================================>> Hospital Rating Report
	function get_hospital_rating_report($id_hospital=0){
		
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
	//==========================================================================>> Doctor Specialist
	function get_doctor_specialists($id_doctor=0){
		$this->db->select('tbl_doctor_specialists.id, tbl_specialists.en_name, tbl_doctor_specialists.modified_dt');
		$this->db->from('tbl_doctor_specialists');
		$this->db->join('tbl_specialists', 'tbl_specialists.id=tbl_doctor_specialists.id_specialist');
		$this->db->where(array('tbl_doctor_specialists.id_doctor'=>$id_doctor));
		$query=$this->db->get();
		
		return $query->result();
	}
	//==========================================================================>> Doctor Services
	function get_doctor_services($id_doctor=0){
		$this->db->select('tbl_doctor_services.id, tbl_services.en_name, tbl_doctor_services.price,tbl_doctor_services.en_note,tbl_doctor_services.kh_note, tbl_doctor_services.modified_dt');
		$this->db->from('tbl_doctor_services');
		$this->db->join('tbl_services', 'tbl_services.id=tbl_doctor_services.id_service');
		$this->db->where(array('tbl_doctor_services.id_doctor'=>$id_doctor));
		$this->db->order_by ("tbl_doctor_services.modified_dt","DESC");
		$query=$this->db->get();
		
		return $query->result();
	}
	//==========================================================================>>Doctor Hostpital 
	function get_doctor_hospitals($id_doctor=0){
		$this->db->select('tbl_hospital_doctors.id, tbl_hospital_doctors.id_hospital, tbl_hospitals.en_name,tbl_hospitals.image, tbl_hospital_doctors.modified_dt, tbl_hospital_doctors.id_hospital');
		$this->db->from('tbl_hospital_doctors');
		$this->db->join('tbl_hospitals', 'tbl_hospitals.id=tbl_hospital_doctors.id_hospital');
		$this->db->where(array('tbl_hospital_doctors.id_doctor'=>$id_doctor));
		$this->db->order_by ("tbl_hospital_doctors.modified_dt","DESC");
		$query=$this->db->get();
		return $query->result();
	}
	
	function get_blog($id_category=0){
		$this->db->select('*');
		$this->db->from('tbl_blogs');
		$this->db->where(array('id'=>$id_category));
		$query=$this->db->get();
		return $query->result();
	}
	function get_single_blog($id=0){
		$this->db->select('*');
		$this->db->from('tbl_blogs');
		$this->db->where(array('id'=>$id));
		$query=$this->db->get();
		return $query->result();
	}
	function get_single_partner($id=0){
		$this->db->select('*');
		$this->db->from('tbl_partners');
		$this->db->where(array('id'=>$id));
		$query=$this->db->get();
		return $query->result();
	}
	function get_single_help($id=0){
		$this->db->select('*');
		$this->db->from('tbl_helps');
		$this->db->where(array('id'=>$id));
		$query=$this->db->get();
		return $query->result();
	}
	//==========================================================================>> Feedback Questions And Answer
	function get_feedback_question_answer_itemes($id_question=0){
		$this->db->select('tbl_feedback_question_answer_itemes.id, tbl_answer_itemes.en_name, tbl_feedback_question_answer_itemes.scrore');
		$this->db->from('tbl_feedback_question_answer_itemes');
		$this->db->join('tbl_answer_itemes', 'tbl_answer_itemes.id=tbl_feedback_question_answer_itemes.id_feedback_answer_iteme');
		$this->db->where(array('tbl_feedback_question_answer_itemes.id_question'=>$id_question));
		$query=$this->db->get();
		
		return $query->result();
	}
	//==========================================================================>>Feature Hospitals
	function add_featured_hospital(){
		$hospital_name=$this->input->post('hospital_name');
		$data['is_featured']=1;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where(array('en_name'=>$hospital_name));
		$this->db->update('tbl_hospitals',$data);
	}
	//==========================================================================>>Feature Doctor
	function add_featured_doctor(){
		$doctor_name=$this->input->post('doctor_name');
		$data['is_featured']=1;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where(array('en_name'=>$doctor_name));
		$this->db->update('tbl_doctors',$data);
	}
	//==========================================================================>>Feature Doctor
	function add_featured_blog(){
		$blog_name=$this->input->post('blog_name');
		$data['is_featured']=1;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where(array('en_title'=>$blog_name));
		$this->db->update('tbl_blogs',$data);
	}
	//==========================================================================>>Feature Doctor
	function add_special_blog(){
		$blog_name=$this->input->post('blog_name');
		$data['is_specialed']=1;
		$data['modified_dt']	=date('Y-m-d H:i:s');
		$this->db->where(array('en_title'=>$blog_name));
		$this->db->update('tbl_blogs',$data);
	}
	//==========================================================================>> Hospital Survey Questions
	function get_hospital_survey_answers($id_question=0){
		$this->db->select('tbl_hospital_survey_answers.id, tbl_answer_itemes.en_name,tbl_hospital_survey_answers.scrore');
		$this->db->from('tbl_hospital_survey_answers');
		$this->db->join('tbl_answer_itemes', 'tbl_answer_itemes.id=tbl_hospital_survey_answers.id_feedback_answer_iteme');
		$this->db->where(array('tbl_hospital_survey_answers.id_question'=>$id_question));
		$query=$this->db->get();
		
		return $query->result();
	}
	//===========================================================================>> Pagination Phamacies
	 public function record_count_phamacy() {
	   return $this->db->count_all("tbl_phamacies") ;
		
    }
    	function get_phamacies($limit, $start){
		$this->db->limit($limit, $start);
		$this->db->select('*');
		$this->db->from('tbl_phamacies');
		$this->db->order_by('id', 'DESC');
		$query =$this->db->get();
		 if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
		
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

		$this->db->select('h.*');
		$this->db->from('tbl_hospitals as h');
		$this->db->join('tbl_hospital_branches as h_b', 'h_b.id_hospital=h.id');
		$this->db->join('tbl_hospital_specialists as h_s', 'h_s.id_hospital=h.id', 'left');

		if($category!=0){
			$this->db->where('id_hospital_category', $category);
		}
		if($type!=0){
			$this->db->where('id_hospital_type', $type);
		}
		if($province!=0){
			$this->db->where('h_b.id_province', $province);
		}
		if($distrit!=0){
			$this->db->where('h_b.id_distrit', $distrit);
		}
		$this->db->where('h_b.is_default', 1);
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

		$this->db->select('h.*');
		$this->db->from('tbl_hospitals as h');
		$this->db->join('tbl_hospital_branches as h_b', 'h_b.id_hospital=h.id');
		$this->db->join('tbl_hospital_specialists as h_s', 'h_s.id_hospital=h.id', 'left');

		if($category!=0){
			$this->db->where('id_hospital_category', $category);
		}
		if($type!=0){
			$this->db->where('id_hospital_type', $type);
		}
		if($province!=0){
			$this->db->where('h_b.id_province', $province);
		}
		$this->db->where('h_b.is_default', 1);
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
		$this->db->order_by('id', 'DESC');

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
	//========================================== Hospital Search
	public function hospital_search($key){
		$this->db->select('*');
		$this->db->from('tbl_hospitals');
		$this->db->like('en_name',$key); 
		$this->db->limit(50);
		$query =$this->db->get();
		return $query->result();
	}
	//========================================== Phamacy Search
	public function phamacy_search($key){
		$this->db->select('*');
		$this->db->from('tbl_phamacies');
		$this->db->like('en_name',$key); 
		$this->db->limit(50);
		$query =$this->db->get();
		return $query->result();
	}
	//========================================== Phamacy Search
	public function blog_search($id_category, $key){
		$this->db->select('*');
		$this->db->from('tbl_blogs');
		$this->db->like('en_title',$key); 
		$this->db->where('id_category', $id_category);
		$this->db->limit(50);
		$query =$this->db->get();
		return $query->result();
	}
	//===========================================================================>> Pagination Doctors
	 public function record_count_ii() {
	   return $this->db->count_all("tbl_doctors") ;
		
    }
	function get_doctors($limit, $start){
		$this->db->limit($limit, $start);
		$this->db->select('*');
		$this->db->from('tbl_doctors');
		$this->db->order_by('id', 'DESC');
		$query =$this->db->get();
		 if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
		
	}
	//========================================== Doctor Search
	public function doctor_search($key){
		$this->db->select('*');
		$this->db->from('tbl_doctors');
		$this->db->like('en_name', $key,  'both'); 
		$this->db->or_like('kh_name', $key,  'both'); 
		$this->db->limit(50);
		$query =$this->db->get();
		return $query->result();
	}
	//===========================================================================>> Pagination Specialists
	 public function record_count_iii() {
	   return $this->db->count_all("tbl_specialists") ;
		
    }
	function get_specialists($limit, $start){
		$this->db->limit($limit, $start);
		$this->db->select('*');
		$this->db->from('tbl_specialists');
		$this->db->order_by('id', 'DESC');
		$query =$this->db->get();
		 if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
		
	}
	//==========================================Specialist Search
	public function specialist_search($key){
		$this->db->select('*');
		$this->db->from('tbl_specialists');
		$this->db->like('en_name',$key); 
		$this->db->limit(50);
		$query =$this->db->get();
		return $query->result();
	}
	//==========================================Services ID
	public function get_service_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_services');
		$this->db->where('en_name',$en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}
	//==========================================Services ADD and UPDATE
	public function hospital_service_add($data){
		$this->db->insert('tbl_hospital_services',$data);
	}
	public function hospital_service_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_hospital_services',$data);
	}
	//==========================================Services ADD and UPDATE
	public function hospital_branch_add($data){
		$this->db->insert('tbl_hospital_branches',$data);
	}
	public function hospital_branch_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_hospital_branches',$data);
	}
	//==========================================Doctor ID
	public function get_doctor_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_doctors');
		$this->db->where('en_name',$en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}
	//==========================================Doctor ADD and UPDATE
	public function hospital_doctor_add($data){
		$this->db->insert('tbl_hospital_doctors', $data);
	}
	public function hospital_doctor_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_hospital_doctors',$data);
	}
	//==========================================Department ID
	public function get_department_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_departments');
		$this->db->where('en_name',$en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}

	//==========================================Specialist ID
	public function get_specialist_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_specialists');
		$this->db->where('en_name',$en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}
	//==========================================Doctor ADD and UPDATE
	public function hospital_department_add($data){
		$this->db->insert('tbl_hospital_departments',$data);
	}
	public function hospital_department_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_hospital_departments',$data);
	}
	
	//==========================================Doctor ADD and UPDATE
	public function hospital_specialist_add($data){
		$this->db->insert('tbl_hospital_specialists',$data);
	}
	public function hospital_specialist_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_hospital_specialists',$data);
	}
	//==========================================Services  Doctor ID
	public function get_doctor_service_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_services');
		$this->db->where('en_name',$en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}
	//==========================================Doctor Services ADD and UPDATE
	public function doctor_service_add($data){
		$this->db->insert('tbl_doctor_services',$data);
	}
	public function doctor_service_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_doctor_services',$data);
	}
	//==========================================Hospital ID
	public function get_hospital_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_hospitals');
		$this->db->where('en_name', $en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		//echo $this->db->last_query();die;
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}
	//==========================================Hospital ADD and UPDATE
	public function doctor_hospital_add($data){
		//print_r($data);die;
		$this->db->insert('tbl_hospital_doctors',$data);
	}
	public function doctor_hospital_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_hospital_doctors',$data);
	}
	//<<::::::::::::::::::::::::::::::::::>> Data Order <<:::::::::::::::::::::::::::::::::>>
	function update_data_order($tbl){
	$order=$this->input->post("order");
	        foreach($order as $key=>$id){
	        $data['data_order']       =   $key+1;
	        $this->db->where('id', $id);
	            $this->db->update($tbl, $data);
	        }
	        echo "Order has been updated. ";
	}
	//<<:::::::::::::::::::::::::::::::::::>> Update Default address of hospital
	function update_default_branch($id, $id_hospital){
		$datax['is_default']=0;
		$this->db->where(array('id_hospital'=>$id_hospital));
		$this->db->update('tbl_hospital_branches', $datax);

		$data['is_default']=1;
		$this->db->where(array('id'=>$id));
		$this->db->update('tbl_hospital_branches', $data);
		echo "Default address has been updated.";

	}
	//:::::::::::::::::::::::::::::::::::::::>> All Service
	function get_all_service_displays($id_service_category){
		$this->db->select('id, en_name, modified_dt, is_published');
		$this->db->from('tbl_services');
		$this->db->where('id_service_category', $id_service_category);
		return $this->db->get()->result();
	}

	//:::::::::::::::::::::::::::::::::::::::>> Ads Management
	function get_vertical_ads_displays($id_page){
		$this->db->select('v.id, a.name, a.v_image, v.modified_dt, v.is_published');
		$this->db->from('tbl_vertical_ads_displays as v');
		$this->db->join('tbl_ads as a', 'a.id=v.id_ad');
		$this->db->where('v.id_page', $id_page);
		return $this->db->get()->result();
	}
	function get_horizontal_ads_displays($id_page){
		$this->db->select('id, type, note, modified_dt, id_featured, is_published');
		$this->db->from('tbl_horizontal_ads_dispays');
		$this->db->where('id_page', $id_page);
		$ads=$this->db->get()->result();
		$result=array();
		foreach($ads as $row){
			if($row->type==1){
				$this->db->select('en_name, image');
				$this->db->from('tbl_doctors');

				$this->db->where('id', $row->id_featured);
				$feature=$this->db->get()->result();
				if(!empty($feature)){
					$result[]=array(
									'id'=>$row->id, 
									'id_featured'=>$row->id_featured, 
									'name'=>$feature[0]->en_name, 
									'image'=>$feature[0]->image, 
									'type'=>$row->type,
									'is_published'=>$row->is_published,  
									'note'=>$row->note,
									'modified_dt'=>$row->modified_dt
									);
				}
				
			}else if($row->type==2){
				$this->db->select('en_name, image');
				$this->db->from('tbl_hospitals');

				$this->db->where('id', $row->id_featured);
				$feature=$this->db->get()->result();
				if(!empty($feature)){
					$result[]=array(
									'id'=>$row->id, 
									'id_featured'=>$row->id_featured, 
									'name'=>$feature[0]->en_name, 
									'image'=>$feature[0]->image, 
									'type'=>$row->type,
									'is_published'=>$row->is_published,  
									'note'=>$row->note,
									'modified_dt'=>$row->modified_dt
									);
				}
			}else if($row->type==3){
				$this->db->select('name, h_image');
				$this->db->from('tbl_ads');
				$this->db->where('id', $row->id_featured);
				$feature=$this->db->get()->result();
				if(!empty($feature)){
					$result[]=array(
									'id'=>$row->id, 
									'id_featured'=>$row->id_featured, 
									'name'=>$feature[0]->name, 
									'image'=>$feature[0]->h_image, 
									'type'=>$row->type,
									'is_published'=>$row->is_published,  
									'note'=>$row->note,
									'modified_dt'=>$row->modified_dt
									);
				}
			}	
		}

		return $result;
	}
	function horizontal_ads_displays_image($type=1, $id_featured=0){
			if($type==1){
				$this->db->select('image');
				$this->db->from('tbl_doctors');
				
			}else if($type==2){
				$this->db->select('image');
				$this->db->from('tbl_hospitals');

				
			}else if($type==3){
				$this->db->select('h_image as image');
				$this->db->from('tbl_ads');
			}

			$this->db->where('is_published', 1);
			$this->db->where('id', $id_featured);
			$feature=$this->db->get()->result();
			if(!empty($feature)){
				echo base_url().$feature[0]->image;
			}else{
				echo "";
			}

	}
	//==============================>> Get Single
	function get_single_question($id=0){
		$this->db->select('*');
		$this->db->from('tbl_servay_questions');
		$this->db->where(array('id'=>$id));
		$query=$this->db->get();
		return $query->result();
	}	
	//::::::::::::::::::::::::::::::::::::::::::::::::>> get_last_id_doctor
	function get_last_id_doctor(){
		$this->db->select('id');
		$this->db->from('tbl_doctors');
		$this->db->order_by('id', "DESC");
		$this->db->limit('1');
		return $this->db->get()->result();
	}
	//::::::::::::::::::::::::::::::::::::::::::::::::>> get_last_id_doctor
	function get_last_id_hospital(){
		$this->db->select('id');
		$this->db->from('tbl_hospitals');
		$this->db->order_by('id', "DESC");
		$this->db->limit('1');
		return $this->db->get()->result();
	}
	//::::::::::::::::::::::::::::::::::::::::::::::::>> get_last_id_doctor
	function get_last_id_phamacy(){
		$this->db->select('id');
		$this->db->from('tbl_phamacies');
		$this->db->order_by('id', "DESC");
		$this->db->limit('1');
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
	//::::::::::::::::::::::::::::::::::::::::::::::::>> get_hospital_type
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
	//==========================================================================>> Hostpital Specialist
	function get_blog_tag($id_blog=0){
		$this->db->select('tbl_blog_tags.id, tbl_tags.en_name, tbl_blog_tags.modified_dt');
		$this->db->from('tbl_blog_tags');
		$this->db->join('tbl_tags', 'tbl_tags.id=tbl_blog_tags.id_tag');
		$this->db->where(array('tbl_blog_tags.id_blog'=>$id_blog));
		$this->db->order_by ("tbl_blog_tags.modified_dt","DESC");
		$query=$this->db->get();
		
		return $query->result();
	}
	public function get_tag_id_by_name($en_name){
		$this->db->select('id');
		$this->db->from('tbl_tags');
		$this->db->where('en_name',$en_name);
		$this->db->limit(1);
		$query =$this->db->get();
		if(count($query->result())>0){
			return $query->result()[0]->id;
		}else{
			return 0;
		}
	}
	//==========================================Doctor ADD and UPDATE
	public function blog_tag_add($data){
		$this->db->insert('tbl_blog_tags',$data);
	}
	public function blog_tag_edit($id, $data){
		$this->db->where("id", $id); 
		$this->db->update('tbl_blog_tags',$data);
	}

	public function get_hospital_data_rating($id_hospital_rating){
		$this->db->select('*');
		$this->db->from('view_hospital_rating_score');
		$this->db->where('id_hospital_rating', $id_hospital_rating);
		return $this->db->get()->result();
	}
	public function get_hospital_ratings($id_hospital=0){
		$this->db->select('d.en_name as department, h_r.code, h_r.arrived_date, h_r.created_dt, h_r.id, h_r.is_published');
		$this->db->from('tbl_departments as d');
		$this->db->Join('tbl_hospital_ratings as h_r', 'h_r.id_department=d.id');
		$this->db->where(array('d.is_published'=>1, 'h_r.id_hospital'=>$id_hospital));
		$this->db->order_by('h_r.created_dt', 'DESC');
		return $this->db->get()->result();
	}
	public function get_hospital_rating($id_hospital_rating=0){
		$this->db->select('d.en_name as department, h_r.code, h_r.arrived_date, h_r.created_dt, h_r.id, h_r.id_hospital, h_r.review, h_r.is_recommended, h_r.is_published');
		$this->db->from('tbl_departments as d');
		$this->db->Join('tbl_hospital_ratings as h_r', 'h_r.id_department=d.id');
		$this->db->where(array('d.is_published'=>1, 'h_r.id'=>$id_hospital_rating));
		return $this->db->get()->result();
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::>> 09-03-2016
	function update_active_status_of_consultant_image($id){
		$data['is_active']	= 0;
		$this->db->update('tbl_consultant_images', $data);

		$data['is_active']	= 1;
		$this->db->where('id', $id);
		$this->db->update('tbl_consultant_images', $data);

	}
	//::::::::::::::::::::::::::::::::::::::::::::::::>> 10-03-2016
	function get_new_health_consultant_requets(){
		$this->db->where(array('is_accepted'=>0 , 'is_deleted'=>0));
		return $this->db->count_all_results('tbl_health_consultants');

	}
	//===========================================================================>> Pagination Doctors
	 public function record_count_iv() {
	 $this->db->where(array('is_accepted'=>1, 'is_seen'=>1, 'is_deleted'=>0));
	   return $this->db->count_all("tbl_health_consultants") ;
		
    }
    function get_health_consultant_accepteds($limit, $start){
		$this->db->limit($limit, $start);
		$this->db->select('*');
		$this->db->from('tbl_health_consultants');
		$this->db->where(array('is_accepted'=>1, 'is_seen'=>1, 'is_deleted'=>0));
		$this->db->order_by('id', 'DESC');
		$query =$this->db->get();
		 if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
		
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Layout Fillter. Added Mr Koeun 13-03-2016
	function get_layout_appears_fillter($id_page=0){
		$this->db->select('l.name, a_p.id, a_p.is_published, a_p.modified_dt');
		$this->db->from('tbl_layouts as l');
		$this->db->join('tbl_layout_appears as a_p', 'a_p.id_layout=l.id');
		$this->db->where('a_p.id_page', $id_page);
		return $this->db->get()->result();
	}
	//========================================================================= generate_hospital_codes added by Tonon 15/03/2016
	function generate_hospital_codes(){
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
    //===========================================================================>> Pagination Hospital code
	 public function record_count_hospital_code() {
	   return $this->db->count_all("tbl_hospital_codes") ;
		
    }
    function get_hospital_code($limit, $start,$id_hospital=0){
		$this->db->limit($limit, $start);
		$this->db->select('*');
		$this->db->from('tbl_hospital_codes');
		$this->db->where(array('id_hospital'=>$id_hospital));
		$this->db->order_by('id', 'DESC');
		$query =$this->db->get();
		 if ($query->num_rows() > 0) {
            foreach ($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
		
	}
	//======================================Subscriber
	 public function record_count_subscriber() {
	   return $this->db->count_all("tbl_subscribers") ;
    }
    function get_subcribers(){
		$this->db->select('*');
		$this->db->from('tbl_subscribers');
		return $this->db->get()->result();
		
	}
	//=================================================== Sent list
	function get_sent_list($id=0){
		$this->db->select('*');
		$this->db->from('tbl_newsletters');
		$this->db->where(array('id'=>$id));
		$query=$this->db->get();
		return $query->result();
	}
	//==========================================================================>> Sent List Blog
	function get_sent_list_blog($id_newsletter=0){
		$this->db->select('n_b.id, b.slug, b.image, b.kh_title, b.en_title, en_pre_content, kh_pre_content, id_category ');
		$this->db->from('tbl_newsletter_blogs as n_b');
		$this->db->join('tbl_blogs as b', 'b.id=n_b.id_blog');
		$this->db->where(array('n_b.id_newsletter'=>$id_newsletter));
		return $this->db->get()->result();
	}
	//::::::::::::::::::::::::::::::::::::::::::::::::>> GET blog title 04/01/2016
	function get_blog_title(){
		$id_blog=$this->input->post('id_blog');
		$this->db->select('en_title');
		$this->db->from('tbl_blogs');
		$this->db->where(array('id'=>$id_blog));
        $data=$this->db->get()->row();
		if(!empty($data)){
            echo $data->en_title;
		}else{
			echo "No blog is found";
		}
		
	}
	//::::::::::::::::::::::::::::::::::::::::::::::::>> GET blog title April 21, 2016
	function get_feedbacks(){
		$this->db->select('f.id, r.name, f.created_dt');
		$this->db->from('tbl_raters as r');
		$this->db->join('tbl_feedbacks as f', 'f.id_rater=r.id');
		return $this->db->get()->result();
	}
	function get_feedback($id_feedback=0){
		$this->db->select('f.id, r.name, f.created_dt, f.review');
		$this->db->from('tbl_raters as r');
		$this->db->join('tbl_feedbacks as f', 'f.id_rater=r.id');
		$this->db->where('f.id', $id_feedback);
		return $this->db->get()->result();
	}
	public function get_feedback_data_rating($id_feedback){
		$this->db->select('*');
		$this->db->from('view_feedback_rating_score');
		$this->db->where('id_feedback', $id_feedback);
		return $this->db->get()->result();
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
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get specifications April 23, 2016
	public function get_specifications($id_category=0){
		$this->db->select('id, en_name as name');
		$this->db->from('tbl_specialists');
		return $this->db->get()->result();
		
	}
	
}	