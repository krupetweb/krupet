<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> DATE
if ( ! function_exists('date_format1')){
	function date_format1($datetime=0){
			//return "This is date foramt";
			
			if($datetime!=""){
					$unixdatetime = strtotime($datetime);
					return strftime("%B %d, %Y", $unixdatetime);
			}else return "";
	}
}

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Clean String
function clean_string($string) {
   $string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.
   $string = preg_replace('/[^A-Za-z0-9\-]/', '', $string); // Removes special chars.

   return preg_replace('/-+/', '-', $string); // Replaces multiple hyphens with single one.
}


