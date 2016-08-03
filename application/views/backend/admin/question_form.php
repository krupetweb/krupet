<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Notification Form
            	</div>
				<a href="<?=base_url()?>admin/questions/<?php echo $type;?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
				<a href="<?=base_url()?>admin/question_form/create/<?php echo $type;?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New</a> 
            </div>
			<div class="panel-body">
				<?php
				   
					
					$en_name			='';
					$kh_name			='';
					$en_question		='';
					$kh_question		='';
					$is_published		=0;
					$modified_dt		='';
					$button_caption='created';
					
					if($action=='update'){

					    $type	          =$data[0]->type;
						$en_name			=$data[0]->en_name;
						$kh_name			=$data[0]->kh_name;
						$en_question			=$data[0]->en_question;
						$kh_question			=$data[0]->kh_question;
						$is_published		= $data[0]->is_published;
						$modified_dt		=$data[0]->modified_dt;
						$button_caption		='update';
					}
				?>
			
			
			
				<?=form_open(base_url().'admin/questions_cud/'.$action.'/'.$type .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
					text_field(array('caption'=>'Nmae (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
					text_field(array('caption'=>'Nmae (KH) ', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
					text_field(array('caption'=>'Questions (ENG) ', 'name'=>'en_question', 'value'=>$en_question, 'required'=>'required', 'required_message'=>''));
					text_field(array('caption'=>'Questions (KH) ', 'name'=>'kh_question', 'value'=>$kh_question, 'required'=>'required', 'required_message'=>''));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$type));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/questions_cud/delete/'.$type.'/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>


		