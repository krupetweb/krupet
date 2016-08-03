
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
		include('hospital_survey_tab.php')
		?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Image
									</div>
									
									<a href="<?=base_url()?>admin/hospital_survey_answer_form/create/<?php echo $id_question?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a>
									<a href="<?=base_url()?>admin/hospital_survey_answers/<?php echo $id_question?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a>
								</div>
								<div class="panel-body">
									<?php
										
										
										$id_feedback_answer_iteme		=0;
										$scrore		='';
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
											$id_feedback_answer_iteme		= $data[0]->id_feedback_answer_iteme;
											$scrore			= $data[0]->scrore;
											
											$button_caption='update';
										}
										$feedback_answer_itemes_data=array();
										foreach($feedback_answer_itemes as $row){
											$feedback_answer_itemes_data[$row -> en_name]=$row -> id;
										}
										
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_survey_answer_cud/'.$action.'/'.$id_question.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php
										select_field(array('caption'=>'Feedback Answer Iteme', 'name'=>'id_feedback_answer_iteme', 'data'=>$feedback_answer_itemes_data, 'id'=>$id_feedback_answer_iteme));
										text_field(array('caption'=>'Scrore', 'name'=>'scrore', 'value'=>$scrore, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_survey_answer_cud/delete/'.$id_question.'/'.$id));
									?>
									<?=form_close()?>
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
