
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
										<i class="entypo-plus-circled"></i>Image
									</div>
									<a href="<?=base_url()?>admin/doctor_service_form/create/<?php echo $id_doctor?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
										
										
										$id_service		=0;
										$price		='';
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
											$id_service		= $data[0]->id_service;
											$price			= $data[0]->price;
											$modified_dt    = $data[0]->modified_dt;
											
											$button_caption='update';
										}
										$services_data=array();
										foreach($services as $row){
											$services_data[$row -> en_name]=$row -> id;
										}
										
									?>
								
								
								
									<?=form_open(base_url().'admin/doctor_service_cud/'.$action.'/'.$id_doctor.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php
										select_field(array('caption'=>'Services', 'name'=>'id_service', 'data'=>$services_data, 'id'=>$id_service));
										text_field(array('caption'=>'Price', 'name'=>'price', 'value'=>$price, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/doctor_service_cud/delete/'.$id_doctor.'/'.$id));
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
