
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
		include('doctor_tab.php')
		?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Background & Experien Form
									</div>
								 
								</div>
								<div class="panel-body">
									<?php
										
										$en_background	='';
										$kh_background	='';
										$en_experien	='';
										$kh_experien	='';
										
										$button_caption='create';
										
										if($action=='update'){
									
											$en_background	= $data[0]->en_background;
											$kh_background	= $data[0]->kh_background;
											$en_experien	= $data[0]->en_experien;
											$kh_experien	= $data[0]->kh_experien;
											$button_caption='update';
										}
										
										
										
									
									?>

									<?=form_open(base_url().'admin/doctor_background_cud/'.$action.'/'.$id_doctor, array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										ck_editor_field(array('caption'=>'Background (ENG)', 'name'=>'en_background', 'value'=>$en_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Background (KHM)', 'name'=>'kh_background', 'value'=>$kh_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Experien (ENG)', 'name'=>'en_experien', 'value'=>$en_experien, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Experien (KHM)', 'name'=>'kh_experien', 'value'=>$kh_experien, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/doctor_background_cud/delete/'.$id_doctor));
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
<style type="text/css">
	.btn-danger{
		display:none;
	}
</style>