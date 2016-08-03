<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/health_consultants"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				
				<?php
					$id         =$data[0]->id;
					$name		=$data[0]->name;
					$sex		=$data[0]->sex;
					$age		=$data[0]->age;
					$email		=$data[0]->email;
					$phone		=$data[0]->phone;
					$symtom		=$data[0]->symtom;
					$description	=$data[0]->description;
					
				?>
			
			
			
				<?=form_open(base_url().'admin/deleted_health_consultant/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name,  'required'=>'required', 'required_message'=>'Value Required'));
						text_field(array('caption'=>'Sex', 'name'=>'sex', 'value'=>$sex,  'required'=>'required', 'required_message'=>'Value Required'));
						text_field(array('caption'=>'Age', 'name'=>'age', 'value'=>$age,  'required'=>'required', 'required_message'=>'Value Required'));
						text_field(array('caption'=>'Email', 'name'=>'eamil', 'value'=>$email,  'required'=>'required', 'required_message'=>'Value Required'));
						text_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone,  'required'=>'required', 'required_message'=>'Value Required'));
						//text_field(array('caption'=>'Symtom', 'name'=>'symtom', 'value'=>$symtom,  'required'=>'required', 'required_message'=>'Value Required'));
						ck_editor_field(array('caption'=>'Description', 'name'=>'description', 'value'=>$description, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						button_field(array('button_caption'=>"dalete", 'url_delete'=>base_url().'admin/deleted_health_consultant/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
<style>
	.btn-danger{display:none}
</style>
		