<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Feedback_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();
    }
	function get_feedback_questions(){
		$this->db->select($this->lang.'_name as name, id, '.$this->lang.'_question as question');
		$this->db->from('tbl_feedback_questions');
		$this->db->where('is_published',1);
		return $this->db->get()->result();
	}
	function submit_feedback(){
		$data = json_decode($this->input->post('data'), TRUE);
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
			$this->db->from('tbl_feedbacks');
			$this->db->where(array('id_rater'=>$id_rater));
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
				$waitedDays=60-$dDiff->days;

				if($dDiff->days<=60){
					echo "Sorry! You used to rate this hospital on ".date_format1($last_rate_dt).". You need to wait ".$waitedDays." day(s) more."; die;
				}
			}
		}				

		
		$data_feedback['id_rater']		=$id_rater;
		$data_feedback['review']			=$data['review'];
		$data_feedback['created_dt']		=date('Y-m-d h:i:sa');
		$this->db->insert('tbl_feedbacks', $data_feedback);

		$this->db->select('id');
		$this->db->from('tbl_feedbacks');
		$this->db->limit(1);
		$this->db->order_by('id', 'DESC');
		$data_rating_id=$this->db->get()->result();
		$last_id_feedback_rating=$data_rating_id[0]->id;

		$data_score=$data['data_score'];
		for($i=0; $i<count($data_score) ; $i++){ 
			$score_item['id_feedback']=$last_id_feedback_rating;
			$score_item['id_question']=$data_score[$i]['id_question'];
			$score_item['score']=$data_score[$i]['score'];
			$this->db->insert('tbl_feedback_scores', $score_item);
		}

		echo "Thanks you for your rating.";
	}

}	
