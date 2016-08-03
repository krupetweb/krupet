<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Feedback extends Frontend_base {
	var $page_data=array();
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/feedback_model', 'model');
    }

	public function index(){
		$this->page_data['ads_v'] 			= $this->model->get_vertical_ads(22);
		$this->page_data['ads_h'] 			= $this->model->get_horizontal_ads(22);

		$this->page_data['questions']= $this->model->get_feedback_questions();
		$this->page_data['page_title']="feedback";
		$this->page_data['page_name']='feedback';
		$this->load->view('frontend/index', $this->page_data);
	}
	public function submit_feedback(){
		$this->model->submit_feedback();
	}
}
