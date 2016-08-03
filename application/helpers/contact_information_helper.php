<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> lang
if ( ! function_exists('get_contact_information')){
	function get_contact_information($alais='') {
		$CI	=&	get_instance();
		$CI->load->library('session');
		if($CI->session->userdata('admin_login')){
			$CI->session->unset_userdata('contact_information');
		}
		$contact_informations=array();
		if($CI->session->userdata('contact_information')){
			$contact_informations=$CI->session->userdata('contact_information');
		}else{
			$CI->load->database();
			$query = $CI->db->get('tbl_contact_information');
			$contact_informations=$query->result();
			$CI->session->set_userdata(array('contact_informations'=>$contact_informations));
		}
		foreach($contact_informations as $row){
			if($row->alais==$alais){
				return $row->content;
			}
		}
		
		
	}
}


