<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Help Form
            	</div>
				<a href="<?=base_url()?>admin/help_form/create/<?php echo $type; ?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New </a> 
				<a href="<?=base_url()?>admin/helps/<?php echo $type; ?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$en_name			='';
					$kh_name			='';
					$is_published	=0;
					$modified_dt='';
					$button_caption='create';
					if($action=='update'){
					
						$id				= $help[0]->id;
						$type			= $help[0]->type;
						$en_name			= $help[0]->en_name;
						$kh_name			= $help[0]->kh_name;
						$is_published	= $help[0]->is_published;
						$modified_dt    = $help[0]->modified_dt;
						
						$button_caption='update';
					}
					
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/help_cud/'.$action.'/'.$type .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name (Eng)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$type));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/help_cud/delete/'.$type.'/'.$id));
				?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		