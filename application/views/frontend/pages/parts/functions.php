<?php
	function get_lang($slug=''){
        $CI	=&	get_instance();
		$langs=$CI->session->userdata('langs');
		//print_r($langs); die;
		foreach($langs as $row){
			if($row->alais==$slug){
				return $row->lang;
			}
			
		}
		return 'x';

    }
?>