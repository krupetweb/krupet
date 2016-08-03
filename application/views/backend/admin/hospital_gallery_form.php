
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php  include('hospital_tab.php') ?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Image
									</div>
									<a href="<?=base_url()?>admin/hospital_gallery_form/create/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
								</div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$en_name		='';
										$kh_name		='';
										$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=1500%C3%97500&w=1500&h=500';
										$is_published	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data[0]->id;
											$en_name		= $data[0]->en_name;
											$kh_name		= $data[0]->kh_name;
											$image			= base_url().$data[0]->image;
											$is_published	= $data[0]->is_published;
											$modified_dt    = $data[0]->modified_dt;
											
											$button_caption='update';
										}
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_gallery_cud/'.$action.'/'.$id_hospital.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_gallery_cud/delete/'.$id_hospital.'/'.$id));
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


		


