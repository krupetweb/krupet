<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('tab.php') ?>

			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
					        	<div class="panel-heading">
					        	    <div class="panel-title">
					            	    <i class="entypo-plus-circled"></i><?=ucfirst($term)?> -> <?=ucwords(str_replace('_', ' ', $page))?>
					            	</div>
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_hospitals?action=create&id_doctor=<?=$id_doctor?>&id_hospital=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
					            </div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$id_hospital =0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data->id;
											$id_hospital		= $data->id_hospital;
											$modified_dt    = $data->modified_dt;
											
											$button_caption='update';
										}
                                    $hospital_data=array();
									foreach($data_hospitals as $row){
										$hospital_data[$row -> name]=$row -> id;
									}
										
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_hospital?id_doctor='.$id_doctor.'&id_hospital='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										
										select_field(array('caption'=>'Hospital', 'name'=>'id_hospital', 'data'=>$hospital_data, 'id'=>$id_hospital));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/'.$term.'/delete_hospital?id_doctor='.$id_doctor.'&id_hospital='.$id));
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
			