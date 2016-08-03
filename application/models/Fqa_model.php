<?php

if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Fqa_model extends Frontend_base_model {
	var $lang;
    function __construct() {
        parent::__construct();
		
			if($this->uri->segment(1)=='en'){
				$this->lang="en";
			}else{
				$this->lang="kh";
			}
		
    }
	
	//===============================================>> Homwpage GET TIP BY TONON
		public function get_faqs(){
		$this->db->select('id,'.$this->lang.'_question as question,'.$this->lang.'_answer as answer,modified_dt' );
		$this->db->from('tbl_faqs');
		//$this->db->limit(5);
		$query = $this->db->get();
		return $query->result();
	}
    
}
