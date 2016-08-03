<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
class Frontend_base_model extends CI_model{
	public $lang;
    
    function __construct() {
        parent::__construct();
			$this->lang="kh";
			if($this->uri->segment(1)=='en'){
				$this->lang="en";
			}
			if($this->session->userdata('admin_login') == 1){
				$this->session->unset_userdata('hospital_menu');
				$this->session->unset_userdata('specification_menu');
			}else{
				if($this->session->userdata('lang')){
					if($this->session->userdata('lang')!=$this->lang){
						$this->session->unset_userdata('hospital_menu');
						$this->session->unset_userdata('specification_menu');
						$this->session->set_userdata('lang', $this->lang);
					}
				}
			}
				
			//if(!$this->session->userdata('hospital_menu')){
				$menu=array();
				$this->db->select($this->lang.'_name as name, id');
				$this->db->from('tbl_hospital_categories');
				$this->db->where('is_published', 1);
				$menu_data=$this->db->get()->result();
				foreach($menu_data as $row){
					$this->db->select($this->lang.'_name as name');
					$this->db->from('tbl_hospital_types');
					$this->db->where(array('is_published'=>1, 'id_hospital_category'=>$row->id));
					$menu[]=array('name'=>$row->name, 'items'=>$this->db->get()->result());
				}
				$this->session->set_userdata('hospital_menu', $menu);
			//}

			//if(!$this->session->userdata('specification_menu')){
				$this->db->select($this->lang.'_name as name');
				$this->db->from('tbl_specialists');
				$this->db->where('is_published', 1);
				//print_r($this->db->get()->result());die;
				$this->session->set_userdata('specification_menu', $this->db->get()->result());
			//}
    }

	function get_horizontal_ads($fillter){
		$id_page=$fillter;
		if(!is_int($fillter)){
			$this->db->select('id');
			$this->db->from('tbl_pages');
			$this->db->where('alais', $fillter);
			//$this->db->limit(1);
			$id_data=$this->db->get()->result();
			$id_page=$id_data[0]->id;
		}

		$this->db->select('type, id_featured');
		$this->db->from('tbl_horizontal_ads_dispays');
		$this->db->where(array('is_published'=>1,'id_page'=>$id_page));
		$this->db->order_by('data_order', 'ASC');
		$data_ad = $this->db->get()->result();
		//print_r($data_ad);die;
		$ads=array();

		foreach($data_ad as $row){
			
			if($row->type==1){
				$this->db->select('d.slug, d.image, d.'.$this->lang.'_name as name, d.'.$this->lang.'_title as title, s.'.$this->lang.'_name as specialist');
				$this->db->from('tbl_doctors as d');
				$this->db->join('tbl_specialists as s', 's.id=d.id_specialist');
				$this->db->where(array('d.is_published'=>1, 'd.id'=>$row->id_featured));
				$ad_item=$this->db->get()->result();
				if(!empty($ad_item)){
				    $ads[]=array('type'=>$row->type, 'name'=>$ad_item[0]->title.' '.$ad_item[0]->name, 'caption'=>'<i class="fa fa-stethoscope"></i> &nbsp;'.$ad_item[0]->specialist, 'image'=>$ad_item[0]->image, 'link'=>base_url().$this->lang.'/doctors/'.$ad_item[0]->slug);
                }
			}else if($row->type==2){
				$this->db->select('h.slug, h.image, h.'.$this->lang.'_name as name, p.'.$this->lang.'_name as province, d.'.$this->lang.'_name as distrit');
				$this->db->from('tbl_hospitals as h');
				$this->db->join('tbl_hospital_branches as b', 'b.id_hospital=h.id');
				$this->db->join('tbl_provinces as p', 'p.id=b.id_province');
				$this->db->join('tbl_distrits as d', 'd.id=b.id_province');
				$this->db->where(array('h.is_published'=>1, 'h.id'=>$row->id_featured, 'b.is_default'=>1));
				$ad_item=$this->db->get()->result();
				if(!empty($ad_item)){
				    $ads[]=array('type'=>$row->type, 'name'=>$ad_item[0]->name, 'caption'=>'<i class="fa fa-map-marker"></i> &nbsp;'.$ad_item[0]->distrit.', '.$ad_item[0]->province, 'image'=>$ad_item[0]->image, 'link'=>base_url().$this->lang.'/hospitals/'.$ad_item[0]->slug);
			    }
			}else if($row->type==3){
				$this->db->select('link, h_image');
				$this->db->from('tbl_ads');
				$this->db->where(array('is_published'=>1, 'id'=>$row->id_featured));
				$ad_item=$this->db->get()->result();
				if(!empty($ad_item)){
					$ads[]=array('type'=>$row->type, 'name'=>'', 'caption'=>'', 'image'=>$ad_item[0]->h_image, 'link'=>$ad_item[0]->link);
				}
			}
		}
		return $ads;
		
	}
	function get_vertical_ads($fillter){
		$id_page=$fillter;
		if(!is_int($fillter)){
			$this->db->select('id');
			$this->db->from('tbl_pages');
			$this->db->where('alais', $fillter);
			//$this->db->limit(1);
			$id_data=$this->db->get()->result();
			$id_page=$id_data[0]->id;
		}

		$this->db->select('a.id, a.link, a.v_image as image, v_a_d.is_next, v_a_d.id_page, v_a_d.id as id_ad_display');
		$this->db->from('tbl_ads as a');
		$this->db->join('tbl_vertical_ads_displays as v_a_d', 'v_a_d.id_ad=a.id');
		$this->db->where(array('a.is_published'=>1,'v_a_d.is_published'=>1, 'v_a_d.id_page'=>$id_page));
		$data=$this->db->get()->result_array();

		
		$num_of_ads=sizeof($data);
		$ad= array();

		if($num_of_ads>0){
			
			$next_ad_id=$data[0]['id_ad_display'];
			$found_next=False;
			for($i=0; $i<$num_of_ads; $i++){
				if($data[$i]['is_next']){
					$found_next=True;
					$ad['link']=$data[$i]['link'];
					$ad['image']=$data[$i]['image'];

					if(isset($data[$i+1])){
						if($data[$i+1]['id_page']==$id_page){
							$next_ad_id=$data[$i+1]['id_ad_display'];
						}
					}

					$x['is_next']=0;
					$this->db->where(array('id'=>$data[$i]['id_ad_display']));
					$this->db->update('tbl_vertical_ads_displays', $x);

					$x['is_next']=1;
					$this->db->where(array('id'=>$next_ad_id));
					$this->db->update('tbl_vertical_ads_displays', $x);
				}
			}
			if(!$found_next){
				$x['is_next']=1;
				$this->db->where(array('id'=>$next_ad_id));
				$this->db->update('tbl_vertical_ads_displays', $x);
			}

			
		}
		return $ad;
		
	}

	function get_potential_partners(){
		$this->db->select('tbl_partners.id,tbl_partners.type,tbl_partners.image,tbl_partners.url' );
		$this->db->from('tbl_partners');
		$this->db->where(array('tbl_partners.is_published'=>1));
		$this->db->where(array('tbl_partners.type'=>1));
		$this->db->limit(10);
		$this->db->order_by('data_order', 'ASC');
		$query = $this->db->get();
		return $query->result();
	}
	function get_official_sponsors(){
		$this->db->select('tbl_partners.id,tbl_partners.type,tbl_partners.image,tbl_partners.url' );
		$this->db->from('tbl_partners');
		$this->db->where(array('tbl_partners.is_published'=>1));
		$this->db->where(array('tbl_partners.type'=>2));
		$this->db->limit(10);
		$this->db->order_by('data_order', 'ASC');
		$query = $this->db->get();
		return $query->result();
	}
	function get_banner($alais=''){
		$this->db->select('banner as image' );
		$this->db->from('tbl_pages');
		$this->db->where(array('alais'=>$alais, 'is_banner_published'=>1));
		$query = $this->db->get();
		return $query->result();
	}
	function get_provinces(){
		$this->db->select($this->lang.'_name as name, id');
		$this->db->from('tbl_provinces');
		$this->db->where('is_published', 1);
		return $this->db->get()->result();
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::>> Get Published Layout Added by Mr Koeun on 13-03-2016
	function get_published_layouts($fillter){
		$id_page=$fillter;
		if(!is_int($fillter)){
			$this->db->select('id');
			$this->db->from('tbl_pages');
			$this->db->where('alais', $fillter);
			//$this->db->limit(1);
			$id_data=$this->db->get()->result();
			$id_page=$id_data[0]->id;
		}

		$this->db->select('l.alais, a_p.is_published');
		$this->db->from('tbl_layouts as l');
		$this->db->join('tbl_layout_appears as a_p', 'a_p.id_layout=l.id');
		$this->db->where('a_p.id_page', $id_page);
		$data=$this->db->get()->result();
		$layouts= array();
		foreach($data as $row){
			$layouts[$row->alais]=$row->is_published;
		}
		return $layouts;
	}
	//:::::::::::::::::::::::::::::::::::::::::::::::::::::>> Get Distrits Added by Khouch Koeun on March 27, 2016

	public function get_distrits(){
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
					$first 		='<option>'.$row->name.'</option>';
				}else{
					$other 		.='<option>'.$row->name.'</option>';
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
    function get_langs($lang='kh'){
        $this->db->select('alais, '.$lang.' as lang');
        $this->db->from('tbl_languages'); 
        $data=$this->db->get()->result();
        $this->session->set_userdata(array('current_lang'=>$lang));
        $this->session->set_userdata(array('langs'=>$data));
        //print_r($data); die;
    }
}
