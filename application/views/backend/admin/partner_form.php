<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Partner Form
            	</div>
				<a href="<?=base_url()?>admin/partner_form/create/<?php echo $type; ?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New </a> 
				<a href="<?=base_url()?>admin/partners/<?php echo $type; ?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					
					$name			='';
					$url			='';
					$description	='';
					$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=193%C3%97193&w=193&h=193';
					$is_published	=0;
					$modified_dt='';
					$button_caption='create';
					if($action=='update'){
					
						$id				= $partner[0]->id;
						$type			= $partner[0]->type;
						$name			= $partner[0]->name;
						$url			= $partner[0]->url;
						$description	= $partner[0]->description;
						$image			= base_url().$partner[0]->image;
						$is_published	= $partner[0]->is_published;
						$modified_dt    = $partner[0]->modified_dt;
						
						$button_caption='update';
					}
					
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/partner_cud/'.$action.'/'.$type .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'URL', 'name'=>'url', 'value'=>$url, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					textarea_field(array('caption'=>'Description', 'name'=>'description', 'value'=>$description, 'required'=>'', 'required_message'=>''));
					image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$type));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/partner_cud/delete/'.$type.'/'.$id));
				?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		