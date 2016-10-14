<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Hospital_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }
	
	function search_hospitals($limit, $start){
		$cat		=isset($_GET['cat']) ? $_GET['cat'] : "";
		$type		=isset($_GET['type']) ? $_GET['type'] : "";
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		
		$this->db->select($this->lang.'_name as name, image, slug, id,'.$this->lang.'_province as province, '.$this->lang.'_distrit as distrit,'.$this->lang.'_address as address, phone, email, lat, lon');
		$this->db->from('view_hospitals_for_searhing');
		$this->db->limit($limit, $start);
		
		$this->db->like($this->lang.'_cat', $cat); 
		$this->db->like($this->lang.'_type', $type); 

		if($key!=""){
			$this->db->like($this->lang.'_name', $key);
		}
		if($province!=""){
			$this->db->like($this->lang.'_province', $province);
		}
		if($distrit!=""){
			$this->db->like($this->lang.'_distrit', $distrit);
		}
		if($specification!=""){
			$this->db->like($this->lang.'_specification', $specification); 
		}

		$this->db->order_by('name', 'ASC');
		$this->db->group_by($this->lang.'_name'); 

		return $this->db->get()->result();
		
	}
	

	function record_count(){
		$cat		=isset($_GET['cat']) ? $_GET['cat'] : "";
		$type		=isset($_GET['type']) ? $_GET['type'] : "";
		$province	=isset($_GET['province']) ? $_GET['province'] : "";
		$distrit	=isset($_GET['distrit']) ? $_GET['distrit'] : "";
		$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
		$key		=isset($_GET['key']) ? $_GET['key'] : "";
		
		$this->db->select('id');
		$this->db->from('view_hospitals_for_searhing');
		
		$this->db->like($this->lang.'_cat', $cat); 
		$this->db->like($this->lang.'_type', $type); 

		if($key!=""){
			$this->db->like($this->lang.'_name', $key);
		}
		if($province!=""){
			$this->db->like($this->lang.'_province', $province);
		}
		if($distrit!=""){
			$this->db->like($this->lang.'_distrit', $distrit);
		}
		if($specification!=""){
			$this->db->like($this->lang.'_specification', $specification); 
		}

		$this->db->group_by($this->lang.'_name'); 
		return sizeof($this->db->get()->result());
	}
	function hospital_detail_info($id_hospital=0){
		$this->db->select(			$this->lang.'_name as name, '.
									$this->lang.'_director as director, '.
									$this->lang.'_background as background, image,slug,'.
									$this->lang.'_cat as cat, id_hospital_category as id_cat,'.
									$this->lang.'_type as type');
		
		$this->db->from('view_hospital_info');
		$this->db->where('id', $id_hospital);
		$query = $this->db->get();

		return $query->result();
	}
	function get_contact($id_hospital=0){
		$this->db->select($this->lang.'_name as name,  '. $this->lang.'_working_hours as working_hours,  '.$this->lang.'_address as address, website, facebook_link, phone, email, website, lat, lon');
		$this->db->from('tbl_hospital_branches');
		$this->db->where('id_hospital', $id_hospital);
		$this->db->where('is_default', 1);
		$query = $this->db->get();
		return $query->result();
	}
	function get_hospital_branches($id_hospital=0){
		$this->db->select($this->lang.'_name as name,  '. $this->lang.'_working_hours as working_hours,  '.$this->lang.'_address as address, website, facebook_link, phone, email, website, lat, lon');
		$this->db->from('tbl_hospital_branches');
		$this->db->where('id_hospital', $id_hospital);
		$query = $this->db->get();
		return $query->result();
	}
	function get_hospital_doctors($id_hospital=0){
		$this->db->select($this->lang.'_name as name,slug, id_doctor,  '.$this->lang.'_specialist as specification, '.$this->lang.'_background as background, image');
		$this->db->from('view_hospital_doctors');
		$this->db->where('id_hospital', $id_hospital);
		$query = $this->db->get();
		return $query->result();
	}
	function get_hospital_services($id_hospital=0, $id_department=0){
		// $this->db->select($this->lang.'_name as name, '.$this->lang.'_note as note, '.$this->lang.'_department as department, price');
		// $this->db->from('view_hospital_services');
		// $this->db->where('id_hospital', $id_hospital);
		// $this->db->where('id_department', $id_department);
		// $this->db->order_by('department', 'ASC');
		// $query = $this->db->get();
		// return $query->result();
        // echo $id_department;die;
		// $this->db->select('h_s.id, d.'.$this->lang.'_name as department, s.'.$this->lang.'_name as service, h_s.price, h_s.'.$this->lang.'_note as note,  h_s.modified_dt');
		// $this->db->from('tbl_hospital_services as h_s');
		// $this->db->join('tbl_services as s', 's.id=h_s.id_service');
		// $this->db->join('tbl_departments as d', 'd.id=h_s.id_department');
		// $this->db->where(array('h_s.id_hospital'=>$id_hospital));
		// $this->db->order_by ("h_s.modified_dt","DESC");
		// $data=$this->db->get()->result();
		// return $id_hospital;
		// echo $this->db->last_query();die;
		$this->db->select('s.en_name as name,hs.id,hs.price,hs.modified_dt,hs.is_published');
		$this->db->from('tbl_hospital_services as hs');
		$this->db->join('tbl_services as s','s.id = hs.id_service' );
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
	function get_hospital_galleries($id_hospital){
		$this->db->select('id, '.$this->lang.'_name as name, image');
		$this->db->from('tbl_hospital_galleries');
		$this->db->where('is_published', 1);
		$this->db->where('id_hospital', $id_hospital);
		$query = $this->db->get();
		return $query->result();
	}
	function get_hospital_id_by_slug($slug){
		$this->db->select('h.id, h.'.$this->lang.'_name as name, h.is_rating_code_required');
		$this->db->from('tbl_hospitals as h');
		$this->db->where('h.slug',$slug);
		$this->db->where('h.is_published',1);
		$query = $this->db->get();
		return $query->result();
	}
	function get_rating_questions(){
		$this->db->select($this->lang.'_name as name, id, '.$this->lang.'_question as question');
		$this->db->from('tbl_servay_questions');
		$this->db->where('is_published',1);
		$query = $this->db->get();
		return $query->result();
	}
	function submit_hospital_rating(){
		$data = json_decode($this->input->post('data'), TRUE);
		
		if($data['code']!=""){
			$this->db->select('code, is_active');
			$this->db->where(array('id_hospital'=>$data['id_hospital'], 'code'=>$data['code']));
			$this->db->from('tbl_hospital_codes');
			$data_code=$this->db->get()->result();
			if(count($data_code)==1){
				if(!$data_code[0]->is_active){
					$data_update['is_active']=1;
					$data_update['disabled_dt']=date('Y-m-d h:i:sa');
					$this->db->where('code', $data['code']);
					$this->db->update('tbl_hospital_codes', $data_update);
					$this->submit_rating($data);

				}else{
					echo "<b>Sorry! Your code has already been used.</b>";die;
				}

			}else{
				echo "<b>Sorry! The code you provide is not correct. Please try again or contact Krupet.com team. </b>";die;
			}
		}else{
			$this->submit_rating($data);
		}
			

	}
	function submit_rating($data){
		$user_data=json_decode($data['user_data']);
		$fb_id=$user_data->id;

		//check if a user exists, and will create one if not found
		$id_rater=0;
		$this->db->select('id'); 
		$this->db->from('tbl_raters');
		$this->db->where('fb_id', $fb_id);
		$rater=$this->db->get()->row();

		if(count($rater)==0){
			$new_user['name']=$user_data->name;
			$new_user['email']=$user_data->email;
			$new_user['profile']=$user_data->picture->data->url;
			$new_user['fb_id']=$user_data->id; 
			$new_user['created_dt']=date('Y-m-d h:i:sa');
			$this->db->insert('tbl_raters', $new_user);
			$id_rater = $this->db->query('SELECT `id` FROM `tbl_raters` ORDER BY `id` DESC LIMIT 1')->row()->id;

		}else{
			$id_rater=$rater->id;

			$this->db->select('created_dt');
			$this->db->from('tbl_hospital_ratings');
			$this->db->where(array('id_rater'=>$id_rater, 'id_hospital'=>$data['id_hospital']));
			$this->db->order_by('id', 'DESC');
			$this->db->limit(1);
			$last_rate_dt_data=$this->db->get()->row();

			if(count($last_rate_dt_data)==1){
				$last_rate_dt=$last_rate_dt_data->created_dt;
				$dStart = new DateTime($last_rate_dt);
			   	$dEnd  = new DateTime(date('Y-m-d'));
			   	$dDiff = $dStart->diff($dEnd);
			   	$dDiff->format('%R'); // use for point out relation: smaller/greater
			   	
				$days=date_diff(date_create($last_rate_dt), date_create(date('Y-m-d')));
				$waitedDays=30-$dDiff->days;

				if($dDiff->days<=30){
					echo "Sorry! You used to rate this hospital on ".date_format1($last_rate_dt).". You need to wait ".$waitedDays." day(s) more."; die;
				}
			}
		}				

		$data_hospital_rating['id_hospital'] 	=$data['id_hospital'];
		$data_hospital_rating['id_rater']		=$id_rater;
		$data_hospital_rating['code']			=$data['code'];
		$data_hospital_rating['id_department']	=$data['id_department'];

		$data_hospital_rating['arrived_date']	=$data['arrived_date'];
		$data_hospital_rating['review']			=$data['review'];
		$data_hospital_rating['is_recommended']	=$data['is_recommended'];
		$data_hospital_rating['created_dt']		=date('Y-m-d h:i:sa');
		$this->db->insert('tbl_hospital_ratings', $data_hospital_rating);

		$this->db->select('id');
		$this->db->from('tbl_hospital_ratings');
		$this->db->limit(1);
		$this->db->order_by('id', 'DESC');
		$data_rating_id=$this->db->get()->result();
		$last_id_hospital_rating=$data_rating_id[0]->id;

		$data_score=$data['data_score'];
		for($i=0; $i<count($data_score) ; $i++){ 
			$score_item['id_hospital_rating']=$last_id_hospital_rating;
			$score_item['id_question']=$data_score[$i]['id_question'];
			$score_item['score']=$data_score[$i]['score'];
			$this->db->insert('tbl_hospital_rating_scores', $score_item);
		}

		echo "Thanks you for your rating.";
	}

	
	function get_hospital_rating_data($id_hospital=0){
		$this->db->select('*');
		$this->db->where('id_hospital', $id_hospital);
		$this->db->from('view_rating_for_hospital_search');
		return $this->db->get()->result();
	}
	
	public function get_comments($id_department=0, $id_hospital=0){
		$this->db->select('h_r.created_dt, h_r.review, h_r.is_published, r.name');
		$this->db->from('tbl_hospital_ratings as h_r');
		$this->db->join('tbl_raters r', 'r.id=h_r.id_rater');
		$this->db->where('h_r.id_hospital', $id_hospital);
		$this->db->where('h_r.id_department', $id_department);
		$this->db->where('h_r.is_published', 1);
		$this->db->where('h_r.review!=', "");
		$this->db->order_by('h_r.id','DESC');
		$data=$this->db->get()->result();
		$str='';
		if(!empty($data)){
			foreach($data as $row){
				if($row->review!=""){
					$str.="	<div class='no-pad post-authors'>
								<span><i class='fa fa-user'></i>: ".$row->name."&nbsp; <i class='fa fa-calendar'></i>:".date_format1($row->created_dt)."</span>   <br />              
					        	<p>".$row->review."</p>
					    	</div>";
				}
					
			}
		}else{
			$str.=" <div class='no-pad post-authors'>
							No comment is abailable.
				    </div>";
		}
		echo $str;
	}
	public function get_hospitals_for_rate(){
		$this->db->select('	h.id, 
							h.'.$this->lang.'_name as name,
							h.image, 
							h.slug,

							p.'.$this->lang.'_name as province, 
							d.'.$this->lang.'_name as distrit, 

							avg(r.average) as finial_score, 
							count(r.average) as total_reviewers,

							');
		$this->db->from('tbl_hospitals as h');
		$this->db->join('tbl_hospital_branches as b','b.id_hospital=h.id');
		$this->db->join('tbl_provinces as p','p.id=b.id_province');
		$this->db->join('tbl_distrits as d','d.id=b.id_distrit');
		$this->db->join('view_rating_for_hospital_search as r','r.id_hospital=h.id', 'left');
		$this->db->where(array('h.is_published'=>1,'h.is_featured'=>1,'p.is_published'=>1, 'b.is_default'=>1));
		$this->db->order_by('h.data_order', 'ASC');
		$this->db->group_by('r.id_hospital');

		$this->db->like('h.'.$this->lang.'_name', $this->input->post('name'));
		$this->db->limit(100);
		return $this->db->get()->result();
	}
	function get_hospital_departments($id_hospital=0){
		// $this->db->select('d.'.$this->lang.'_name as name, d.id');
		// $this->db->from('tbl_hospital_departments as h_d');
		// $this->db->Join('tbl_departments as d', 'd.id=h_d.id_department');
		// $this->db->where(array('d.is_published'=>1, 'h_d.id_hospital'=>$id_hospital));
		// return $this->db->get()->result();
		$this->db->select('s.en_name as name,hs.id,hs.price,hs.modified_dt,hs.is_published');
		$this->db->from('tbl_hospital_services as hs');
		$this->db->join('tbl_services as s','s.id = hs.id_service' );
		$this->db->where('id_hospital', $id_hospital);
		return $this->db->get()->result();
	}
    
}
