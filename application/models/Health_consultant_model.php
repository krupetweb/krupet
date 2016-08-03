<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Health_consultant_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }
	 public function submit_contact(){
		$data['name']=$this->input->post('name');
		$data['sex']=$this->input->post('sex');
		$data['age']=$this->input->post('age');
		$data['phone']=$this->input->post('phone');
		$data['email']=$this->input->post('email');
		$data['symtom']=$this->input->post('symtom');
		$data['weight']=$this->input->post('weight');
		$data['place_of_living']=$this->input->post('place_of_living');
		$data['created_dt']= date('Y-m-d H:i:s');
		$data['modified_dt']= date('Y-m-d H:i:s');
		$data['description']=$this->input->post('description');
		$this->db->insert('tbl_health_consultants',$data);

		$this->db->select('content');
		$this->db->from('tbl_contact_information');
		$this->db->where('id',15);
		$email_data=$this->db->get()->result();
		$contact_email =$email_data[0]->content;

		$this->load->library('email');

		$config['protocol'] = 'smtp';
		$config['charset'] = 'iso-8859-1';
		$config['wordwrap'] = TRUE;
		$config['smtp_host'] = 'ssl://mail.lylyfood.com';
		$config['smtp_port'] = '465';
		$config['smtp_user'] = 'smtp@lylyfood.com';
		$config['smtp_pass'] = '80lTE$K?!n+r';
		$config['mailtype'] = 'html';


		$this->email->initialize($config);
		$this->email->subject('Health Consultant');
		$this->email->from('smtp@lylyfood.com', $data['name'].' wants to ask you about health problem.');
		$this->email->to($contact_email); 

		//$this->email->subject($data['subject']);
		$message='
					<table> 	
						<tr>
							<td> Name </td><td>'.$data['name'].' </td>
						</tr>
						<tr>
							<td> Sex </td><td>'.$data['sex'].' </td>
						</tr>
						<tr>
							<td> Age </td><td>'.$data['age'].' </td>
						</tr>
						<tr>
							<td> Email </td><td>'.$data['email'].' </td>
						</tr>
						<tr>
							<td> Phone </td><td>'.$data['phone'].' </td>
						</tr>
						<tr>
							<td> Symtom </td><td>'.$data['symtom'].' </td>
						</tr>
						<tr>
							<td> Weight </td><td>'.$data['weight'].' </td>
						</tr>
						<tr>
							<td> Place of Living </td><td>'.$data['place_of_living'].' </td>
						</tr>
						<tr>
							<td> Description </td><td>'.$data['description'].' </td>
						</tr>
						<tr>
							<td> Date </td><td>'.$data['created_dt'].'</td>
						</tr>	
					</table>'; 

		$this->email->message($message);
		if($this->email->send()){
			echo "Your request has successfully sent. Our staffs will contact you soon. Thanks";
		}else{
			show_error($this->email->print_debugger());
			echo "Sorry! There is an error occured. Please try again later.";
		}
		
	}
	

    
}
