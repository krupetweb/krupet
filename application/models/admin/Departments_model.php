<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

include('Admin_model.php');

class Departments_model extends Admin_model {

    function __construct() {
        parent::__construct();
        $this->tbl='tbl_Departments';

	}
	
	
	
	
}
