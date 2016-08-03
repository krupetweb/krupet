
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
									</div>
									
									<a href="<?=base_url()?>admin/feedback_question_answer_itemes/<?php echo $id_question?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a>
								</div>
								<div class="panel-body">
									<?php
					
					$id				=0;
					$id_category	=0;
					$en_question		='';
					$kh_question		='';
					$is_published	=0;
					$modified_dt='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$id_category	= $data[0]->id_category;
						$en_question		= $data[0]->en_question;
						$kh_question		= $data[0]->kh_question;
						$is_published	= $data[0]->is_published;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
					$categories_data=array();
									foreach($survey_categories as $row){
										$categories_data[$row -> en_name]=$row -> id;
									}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/hospital_survey_question_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Question (ENG)', 'name'=>'en_question', 'value'=>$en_question, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Question (KHM)', 'name'=>'kh_question', 'value'=>$kh_question, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					select_field(array('caption'=>'Category', 'name'=>'id_category', 'data'=>$categories_data, 'id'=>$id_category));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_survey_question_cud/delete/'.$id));
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