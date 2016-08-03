<?php
if (!defined('BASEPATH'))  exit('No direct script access allowed');
class General_model extends CI_model {
    public $lang;
    function __construct() {
        parent::__construct();
        $this->lang="kh";
		if($this->uri->segment(1)=='en'){
			$this->lang="en";
		}
		
    }

    function langs($lang='kh'){
        if (!$this->session->userdata('$current_lang')){
            $this->get_langs($lang);
        }else{
            if($lang!=$this->session->userdata('$current_lang')){
                $this->get_langs($lang);
            }else{
                if($this->session->userdata('$admin_login') && $this->session->userdata('$admin_login')==1){
                  $this->get_langs($lang);
                }
            }
        }
    }
    function get_langs($lang='kh'){
        $this->db->select('alais, '.$lang.' as lang');
        $this->db->from('tbl_languages'); 
        $data=$this->db->get()->result();
        $this->session->set_userdata(array('current_lang'=>$lang));
        $this->session->set_userdata(array('langs'=>$data));
        //print_r($data); die;
    }
    
    function contact_info(){

    }

    function get_distrits($id_province=0){
    	$this->db->select('id, '.$this->lang.'_name as name');
    	$this->db->from('tbl_distrits');
    	$this->db->where(array('id_province'=>$id_province, 'is_published'=>1));
    	$data = $this->db->get()->result();
    	echo json_encode($data);
    }
   
   function get_blog_categories(){
        $this->db->select('id,slug, '.$this->lang.'_name as name,modified_dt' );
        $this->db->from('tbl_blog_categories');
        $this->db->where(array('is_published'=>1));
        $this->db->limit(8);
        $this->db->order_by('data_order', 'ASC');
        $query = $this->db->get();
        return $query->result();
    }
    public function get_data_distrits(){
        $province =$this->input->post('province');
        $distrit  =$this->input->post('distrit');
        $this->db->select('id');
        $this->db->from('tbl_provinces');
        $this->db->like($this->lang.'_name', $province);
        $data_province=$this->db->get()->result();
        if(!empty($data_province)){
            $id_province=$data_province[0]->id;

            $this->db->select($this->lang.'_name as name');
            $this->db->from('tbl_distrits');
            $this->db->where('id_province', $id_province);
            $data_distrit=$this->db->get()->result();


            $default='<option value="">Select Distrit</option>';
            $first='';
            $other='';

            foreach($data_distrit as $row){
                if($distrit==$row->name){
                    $first      ='<option>'.$row->name.'</option>';
                }else{
                    $other      .='<option>'.$row->name.'</option>';
                }
            }
            if($first==''){
                echo $default.$other;
            }else{
                echo $first.$default.$other;
            }
        }else{
            echo '<option value="">Select Distrit</option>';
        }
    }
}	
