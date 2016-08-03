<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/blogs"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id					=0;
					$id_category		=1;
					$en_title			='';
					$kh_title			='';
					$en_pre_content	='';
					$kh_pre_content		='';
					$en_main_content	='';
					$kh_main_content	='';
					$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=335%C3%97191&w=335&h=191';
					$is_published		=0;
					$is_featured		=0;
					$is_specialed		=0;
					$modified_dt		='';
					$button_caption='create';
					
					if($action=='update'){
						$id					=$data->id;
						$id_category		=$data->id_category;
						$en_title			=$data->en_title;
						$kh_title			=$data->kh_title;
						$en_pre_content		=$data->en_pre_content;
						$kh_pre_content		=$data->kh_pre_content;
						$en_main_content	=$data->en_main_content;
						$kh_main_content	=$data->kh_main_content;
						$image				= base_url().$data->image;
						$is_published		= $data->is_published;
						$is_featured		= $data->is_featured;
						$is_specialed		= $data->is_specialed;
						$modified_dt		=$data->modified_dt;
						$button_caption='update';	
					}
					$categories_data=array();
									foreach($categories as $row){
										$categories_data[$row ->en_name]=$row -> id;
										
									}
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'_blog?id_blog='.$id_blog , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						select_field(array('caption'=>'Category', 'name'=>'id_category', 'data'=>$categories_data, 'id'=>$id_category));
						text_field(array('caption'=>'Name (ENG)', 'name'=>'en_title', 'value'=>$en_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_title', 'value'=>$kh_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						textarea_field(array('caption'=>'Pre-Content (ENG)', 'name'=>'en_pre_content', 'value'=>$en_pre_content, 'required'=>'', 'required_message'=>''));
						textarea_field(array('caption'=>'Pre-Content (KHM)', 'name'=>'kh_pre_content', 'value'=>$kh_pre_content, 'required'=>'', 'required_message'=>''));
						ck_editor_field(array('caption'=>'Main-Content (ENG)', 'name'=>'en_main_content', 'value'=>$en_main_content, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						ck_editor_field(array('caption'=>'Main-Content (KHM)', 'name'=>'kh_main_content', 'value'=>$kh_main_content, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
						boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
						boolean_field(array('caption'=>'Featured', 'name'=>'is_featured', 'value'=>$is_featured, 'id'=>$id));
						boolean_field(array('caption'=>'Special', 'name'=>'is_specialed', 'value'=>$is_specialed, 'id'=>$id));
						button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		