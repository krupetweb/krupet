<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Map_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }
	
	function get_hospital(){
		echo 'this is map';
	}
	

	

    
}
