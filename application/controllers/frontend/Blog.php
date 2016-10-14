<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include('Frontend_base.php');
class Blog extends Frontend_base {
	//var $page_data=array();
			
	function __construct(){
		parent::__construct();
        $this->load->model('frontend/blogs_model', 'model');
    }
	
	public function blogs(){
		
		$page 		= isset($_GET['page']) ? $_GET['page'] : 0;
		$cat        = isset($_GET['cat'])?$_GET['cat']:"";
		//echo $cat ;die;
		$tag        = isset($_GET['tag'])?$_GET['tag']:"";
		$config = array();
		$page_name="blogs";
		
		$url=$this->page_data['lang_url']."/".$page_name;  
		$id_category = 1;
        if($cat!=""){
            $url.="?cat=".$cat;
            $id_category= $this->model->get_id_category_by_slug($cat);
        }
		if($tag!=""){
			$url.='?tag='.$tag;
		}
		// echo $id_category;
        $config["base_url"] =$url;
        $config["total_rows"] = $this->model->record_count($id_category, $tag);
        $config["per_page"] = 10;
        $config['query_string_segment'] = 'page';
		$config['enable_query_strings']=true;
        $config['page_query_string']=true;
		
		//config for bootstrap pagination class integration
        $config['full_tag_open'] = '<ul class="pagination">';
        $config['full_tag_close'] = '</ul>';
        $config['first_link'] = false;
        $config['last_link'] = false;
        $config['first_tag_open'] = '<li>';
        $config['first_tag_close'] = '</li>';
        $config['prev_link'] = '&laquo';
        $config['prev_tag_open'] = '<li class="prev">';
        $config['prev_tag_close'] = '</li>';
        $config['next_link'] = '&raquo';
        $config['next_tag_open'] = '<li>';
        $config['next_tag_close'] = '</li>';
        $config['last_tag_open'] = '<li>';
        $config['last_tag_close'] = '</li>';
        $config['cur_tag_open'] = '<li class="active"><a href="#">';
        $config['cur_tag_close'] = '</a></li>';
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
		
        $this->pagination->initialize($config);

        $this->page_data["data"] = $this->model->get_data($config["per_page"], $page, $id_category, $tag);
        $this->page_data["links"] = $this->pagination->create_links();
		// var_dump($this->page_data["data"]);
		// exit();
		$this->page_data['page_name']=$page_name;
		$this->page_data['ads_v'] 			= $this->model->get_vertical_ads(7);
		$this->page_data['ads_h'] 			= $this->model->get_horizontal_ads(7);
		$this->page_data['banner'] 	= $this->model->get_banner('news');
		//$this->page_data['page_title'] 	= "Blog";
        $this->page_data['active_menu'] ='blog';
		$this->load->view('frontend/index', $this->page_data);
	}

	function detail($slug=''){

		//$this->page_data['id_category']=$id_category;
		if($slug!=""){
			
			$this->page_data['data']= $this->model->get_blog_detail($slug);
			if(!empty($this->page_data['data'])){
				$this->page_data['related_blogs']= $this->model->get_related_blogs();
				
				$this->page_data['id']=$this->page_data['data'][0]->id;
				$this->page_data['title']=$this->page_data['data'][0]->title;
				$this->page_data['detail_page']='blog-detail';
				$this->page_data['ads_v'] 			= $this->model->get_vertical_ads(8);
				$this->page_data['ads_h'] 			= $this->model->get_horizontal_ads(8);
				
				$this->page_data['active_menu'] ='blog';
				$this->page_data['banner'] 	= $this->model->get_banner('blog-detail');
				//$this->page_data['page_title'] 	= "Blog";
				$this->page_data['page_name']='blog_detail';
				$this->load->view('frontend/index', $this->page_data);
			}else{
				$this->found_404();
			}
		}else{
			$this->found_404();
		}
		
	}
	
	
}
