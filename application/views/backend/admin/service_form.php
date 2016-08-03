<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Services Form
            	</div>
				<a href="<?=base_url()?>admin/services"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
				<a href="<?=base_url()?>admin/service_form/create"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New</a>
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$id_service_category=0;
					$en_name		='';
					$kh_name		='';
					$en_description		='';
					$kh_description		='';
					$is_published	=0;
					$modified_dt='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$id_service_category	= $data[0]->id_service_category;
						$en_name		= $data[0]->en_name;
						$kh_name		= $data[0]->kh_name;
						$en_description	= $data[0]->en_description;
						$kh_description	= $data[0]->kh_description;
						$is_published	= $data[0]->is_published;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
					$categories_data=array();
									foreach($service_categories as $row){
										$categories_data[$row -> en_name]=$row -> id;
									}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/service_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					select_field(array('caption'=>'Category', 'name'=>'id_service_category', 'data'=>$categories_data, 'id'=>$id_service_category));
					text_field(array('caption'=>'Description (ENG)', 'name'=>'en_description', 'value'=>$en_description, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Description (KHM)', 'name'=>'kh_description', 'value'=>$kh_description, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/service_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		