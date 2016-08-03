<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
include('Frontend_base_model.php');
class Drop_idea_model extends Frontend_base_model {
    function __construct() {
        parent::__construct();

    }
	 public function submit_contact(){
		$data['name']=$this->input->post('name');
		$data['sex']=$this->input->post('sex');
		$data['age']=$this->input->post('age');
		$data['phone']=$this->input->post('phone');
		$data['email']=$this->input->post('email');
		$data['comment']=$this->input->post('comment');
		$this->db->insert('tbl_ideas',$data);

		$this->db->select('content');
		$this->db->from('tbl_contact_information');
		$this->db->where('id',16);
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

		$this->email->from('smtp@lylyfood.com', 'Drop[ing Idea');
		$this->email->to($contact_email); 

		//$this->email->subject($data['subject']);
		$message='
					<table> 	
						<tr>
							<td> From </td><td>'.$data['name'].' </td>
						</tr>
						<tr>
							<td> From </td><td>'.$data['sex'].' </td>
						</tr>
						<tr>
							<td> From </td><td>'.$data['age'].' </td>
						</tr>
						<tr>
							<td> Email </td><td>'.$data['email'].' </td>
						</tr>
						<tr>
							<td> Phone </td><td>'.$data['phone'].' </td>
						</tr>
						<tr>
							<td> Comment </td><td>'.$data['comment'].' </td>
						</tr>	
					</table>'; 
		$this->email->message($message);


		if($this->email->send()){
			echo "Your request has successfully sent. Our staffs will contact you soon. Thanks";
		}else{
			echo "There is an error happened";
		}
		
	}
	

    
}
