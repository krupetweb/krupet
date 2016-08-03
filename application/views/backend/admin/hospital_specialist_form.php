
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
									<a href="<?=base_url()?>admin/hospital_specialist_form/create/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
										
										
										$id_specialist		=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											
											$id_specialist		= $data[0]->id_specialist;
											
											$modified_dt    = $data[0]->modified_dt;
											
											$button_caption='update';
										}
										$specialists_data=array();
										foreach($specialists as $row){
											$specialists_data[$row -> en_name]=$row -> id;
										}
										
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_specialist_cud/'.$action.'/'.$id_hospital.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php
										select_field(array('caption'=>'Specialists', 'name'=>'id_specialist', 'data'=>$specialists_data, 'id'=>$id_specialist));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_specialist_cud/delete/'.$id_hospital.'/'.$id));
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
