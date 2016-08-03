<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');


class Data_order_model extends CI_model {

    function __construct() {
        parent::__construct();

	}

	function update_data_order($tbl){
            $order=$this->input->post("order");
	        foreach($order as $key=>$id){
	        $data['data_order']       =   $key+1;
	        $this->db->where('id', $id);
	            $this->db->update($tbl, $data);
	        }
	        echo "Order has been updated. ";
	}
	
	
	
	
}
