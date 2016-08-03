<?php

if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Subscribe_model extends Frontend_base_model {
	var $lang;
    function __construct() {
        parent::__construct();
		
			if($this->uri->segment(1)=='en'){
				$this->lang="en";
			}else{
				$this->lang="kh";
			}
		
    }
	
	//::::::::::::::::::::::::::::::::::::::::::::::::::>> Subscribtion added by Khouch Koeun on March 25, 2016
	function submit_subscribe(){
		$email=$this->input->post('email');
		if($email!=""){
			$this->db->select('is_active');
			$this->db->from('tbl_subscribers');
			$this->db->where('email', $email);
			$data_email=$this->db->get()->row();
			if(count($data_email)==0){
				$data['lan']=$this->lang;
				$data['email']=$email;
				$data['is_active']=1;
				$data['unactive_code']=uniqid();
				$data['created_dt']=date('Y-m-d H:i:s');
				$id=$this->db->insert('tbl_subscribers', $data);
				echo "Thanks for your subscribe.. ";
			}else{
				$data=array();
				if($data_email->is_active){
					$data['lan']=$this->lang;
					echo "You have already subscribed and now you change the language to ".$this->lang;
				}else{
					$data['is_active']=1;
					$data['lan']=$this->lang;
					echo "Your email has been active again and you change the language to ".$this->lang;
				}
				$this->db->where('email', $email);
				$this->db->update('tbl_subscribers', $data);
			}
		}else{
			echo "email is empty.";
		}
	}
	function unsubscribe($unactive_code=""){
		$data['is_active']=0;
		$this->db->where('unactive_code', $unactive_code);
		$data['unactive_dt']=date('Y-m-d H:i:s');
		$this->db->update('tbl_subscribers', $data);
	}
    
}
