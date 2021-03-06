<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Faqs Form
            	</div>
				<a href="<?=base_url()?>admin/faqs"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
				<a href="<?=base_url()?>admin/faqs_form/create"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus"></i>Add New</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$en_question		='';
					$kh_question		='';
					$en_answer		='';
					$kh_answer		='';
					$is_published	=0;
					$modified_dt='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$en_question		= $data[0]->en_question;
						$kh_question		= $data[0]->kh_question;
						$en_answer	= $data[0]->en_answer;
						$kh_answer	= $data[0]->kh_answer;
						$is_published	= $data[0]->is_published;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/faqs_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Question (ENG)', 'name'=>'en_question', 'value'=>$en_question, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Question (KHM)', 'name'=>'kh_question', 'value'=>$kh_question, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					ck_editor_field(array('caption'=>'Answer (ENG)', 'name'=>'en_answer', 'value'=>$en_answer, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					ck_editor_field(array('caption'=>'Answer (KHM)', 'name'=>'kh_answer', 'value'=>$kh_answer, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/faqs_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		