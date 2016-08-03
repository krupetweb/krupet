<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Hospital Types Form
            	</div>
				<a href="<?=base_url()?>admin/department_form/create"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New </a> 
				
                
				<a href="<?=base_url()?>admin/departments"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i> Back </a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$en_name		='';
					$kh_name		='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$en_name		= $data[0]->en_name;
						$kh_name		= $data[0]->kh_name;
						$button_caption='update';
					}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/department_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/department_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		