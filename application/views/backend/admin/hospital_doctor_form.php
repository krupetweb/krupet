
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
		include('hospital_tab.php')
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
									<a href="<?=base_url()?>admin/hospital_doctor_form/create/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
										
										
										$id_doctor	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											
											$id_doctor		= $data[0]->id_doctor;
											$modified_dt    = $data[0]->modified_dt;
											
											$button_caption='update';
										}
										$doctors_data=array();
										foreach($doctors as $row){
											$doctors_data[$row -> en_name]=$row -> id;
										}
										
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_doctor_cud/'.$action.'/'.$id_hospital.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php
										select_field(array('caption'=>'Doctor', 'name'=>'id_doctor', 'data'=>$doctors_data, 'id'=>$id_doctor));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_doctor_cud/delete/'.$id_hospital.'/'.$id));
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
