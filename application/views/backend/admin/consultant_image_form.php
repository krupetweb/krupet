<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Consultant Image Form
            	</div>
				<a href="<?=base_url()?>admin/consultant_image_form/create"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New </a> 
				<a href="<?=base_url()?>admin/consultant_images"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$image	='https://placeholdit.imgix.net/~text?txtsize=50&txt=390%C3%97350&w=390&h=350';
					$is_active	=0;
					$modified_dt='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$image			= base_url().$data[0]->image;
						$is_active		= $data[0]->is_active;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/consultant_image_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Active', 'name'=>'is_active', 'value'=>$is_active, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/consultant_image_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		