<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<a href="<?=base_url()?>admin/service_category_form/create"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New</a> 
				<a href="<?=base_url()?>admin/service_categories"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$en_name		='';
					$kh_name		='';
					$is_published	=0;
					$modified_dt='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$en_name		= $data[0]->en_name;
						$kh_name		= $data[0]->kh_name;
						$is_published	= $data[0]->is_published;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/service_category_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/service_category_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		