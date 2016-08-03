<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');


//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> lang
if ( ! function_exists('get_lang')){
	function get_lang($alais='') {
		$CI	=&	get_instance();
		$CI->load->library('session');
		
		if($CI->session->userdata('admin_login')){
			$CI->session->unset_userdata('langs');
		}
		
		$langs=array();
		if($CI->session->userdata('langs')){
			$langs=$CI->session->userdata('langs');
		}else{
			$CI->load->database();
			$query = $CI->db->get('tbl_languages');
			$langs=$query->result();
			$CI->session->set_userdata(array('langs'=>$langs));
		}

		$lang="kh";
		if($CI->uri->segment(1)=='en'){
			$lang='en';
		}

		
		//if(isset($lang_config)) $lang = $lang_config;
		foreach($langs as $row){
			if($row->alais==$alais){
				if($lang=='en'){
					return $row->en;
				}else{
					return $row->kh;
				}
				exit();
			}
		}
		
		
	}
}


