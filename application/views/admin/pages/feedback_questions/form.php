<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					$id				=0;
					$en_question		='';
					$kh_question		='';
					$en_name		='';
					$kh_name		='';
					$is_published	=0;
					$modified_dt='';
					$button_caption='create';

					if($action=='update'){
						$id				= $data->id;
						$en_question		= $data->en_question;
						$kh_question		= $data->kh_question;
						$en_name	= $data->en_name;
						$kh_name	= $data->kh_name;
						$is_published	= $data->is_published;
						$modified_dt    = $data->modified_dt;
						
					}
					
						
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'?id='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					ck_editor_field(array('caption'=>'Qeustion (ENG)', 'name'=>'en_question', 'value'=>$en_question, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					ck_editor_field(array('caption'=>'Question (KHM)', 'name'=>'kh_question', 'value'=>$kh_question, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
						button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		