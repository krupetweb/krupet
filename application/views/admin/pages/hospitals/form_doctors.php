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
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_doctors?action=create&id_hospital=<?=$id_hospital?>&id_doctor=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
					            </div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$id_doctor		='';
										$is_published	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data->id;
											$id_doctor		= $data->id_doctor;
											$is_published	= $data->is_published;
											$modified_dt    = $data->modified_dt;
											
											$button_caption='update';
										}
                                    $doctors_data=array();
									foreach($doctors as $row){
										$doctors_data[$row -> name]=$row -> id;
									}
										
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_doctor?id_hospital='.$id_hospital.'&id_doctor='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										select_field(array('caption'=>'Service', 'name'=>'id_doctor', 'data'=>$doctors_data, 'id'=>$id_doctor));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/'.$term.'/delete_doctor?id_hospital='.$id_hospital.'&id_doctor='.$id));
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