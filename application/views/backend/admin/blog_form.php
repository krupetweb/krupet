
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('blog_tab.php') ?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>province
									</div>
									<a href="<?=base_url()?>admin/blog_form/create/<?php echo $id_category ?>/0"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New</a> 
									<a href="<?=base_url()?>admin/provinces"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a>
								</div>
								<div class="panel-body">
										<?php
										
										$en_title		='';
										$kh_title		='';
										$en_pre_content	='';
										$kh_pre_content	='';
										$en_main_content	='';
										$kh_main_content	='';
										$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=335%C3%97191&w=335&h=191';
										$is_published	=0;
										$is_featured	=0;
										$is_specialed	=0;
										$modified_dt='';
										$button_caption='create';
										
										if($action=='update'){
											$id_category	=$blog[0]->id_category;
											$en_title		=$blog[0]->en_title;
											$kh_title		=$blog[0]->kh_title;
											$en_pre_content	=$blog[0]->en_pre_content;
											$kh_pre_content	=$blog[0]->kh_pre_content;
											$en_main_content	=$blog[0]->en_main_content;
											$kh_main_content	=$blog[0]->kh_main_content;
											$image			= base_url().$blog[0]->image;
											$is_published	= $blog[0]->is_published;
											$is_featured	= $blog[0]->is_featured;
											$is_specialed	= $blog[0]->is_specialed;
											$modified_dt	=$blog[0]->modified_dt;
											$button_caption='update';
										}
											
									
									
									?>
								
								
								
									<?=form_open(base_url().'admin/blog_cud/'.$action.'/'.$id_category .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											text_field(array('caption'=>'Name (ENG)', 'name'=>'en_title', 'value'=>$en_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
											text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_title', 'value'=>$kh_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
											textarea_field(array('caption'=>'Pre-Content (ENG)', 'name'=>'en_pre_content', 'value'=>$en_pre_content, 'required'=>'', 'required_message'=>''));
											textarea_field(array('caption'=>'Pre-Content (KHM)', 'name'=>'kh_pre_content', 'value'=>$kh_pre_content, 'required'=>'', 'required_message'=>''));
											ck_editor_field(array('caption'=>'Main-Content (ENG)', 'name'=>'en_main_content', 'value'=>$en_main_content, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
											ck_editor_field(array('caption'=>'Main-Content (KHM)', 'name'=>'kh_main_content', 'value'=>$kh_main_content, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
											image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
											boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id_category));
											boolean_field(array('caption'=>'Featured', 'name'=>'is_featured', 'value'=>$is_featured, 'id'=>$id_category));
											boolean_field(array('caption'=>'Specialed', 'name'=>'is_specialed', 'value'=>$is_specialed, 'id'=>$id_category));
											button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/blog_cud/delete/'.$id_category.'/'.$id));
										?>
										
									<?=form_close()?>
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
		