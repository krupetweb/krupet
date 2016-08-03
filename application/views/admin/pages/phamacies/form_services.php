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
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_services?action=create&id_doctor=<?=$id_doctor?>&id_service=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
					            </div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$price		='';
										$en_note		='';
										$kh_note		='';
										$id_service =0;
										$is_published	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data->id;
											$price		= $data->price;
											$en_note		= $data->en_note;
											$kh_note		= $data->kh_note;
											$id_service		= $data->id_service;
											$modified_dt    = $data->modified_dt;
											
											$button_caption='update';
										}
                                    $service_data=array();
									foreach($services as $row){
										$service_data[$row -> name]=$row -> id;
									}
										
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_service?id_doctor='.$id_doctor.'&id_service='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Price', 'name'=>'price', 'value'=>$price, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										
										select_field(array('caption'=>'Service', 'name'=>'id_service', 'data'=>$service_data, 'id'=>$id_service));
										ck_editor_field(array('caption'=>'Note (ENG)', 'name'=>'en_note', 'value'=>$en_note, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Note (KHM)', 'name'=>'kh_note', 'value'=>$kh_note, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/'.$term.'/delete_service?id_doctor='.$id_doctor.'&id_service='.$id));
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
			