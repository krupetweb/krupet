
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="tabs-vertical-env">
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
					        	<div class="panel-heading">
					            	<?php include('all_service_display_fillter.php') ?>
					            </div>
								<div class="panel-body">
				                   <div id="data_container">
				                     
				                   	<?php

				                   		$id_service_category=0;
										$en_name='';
										$kh_name='';
										$en_description='';
										$kh_description='';
										$is_published	=0;
										$modified_dt='';
										$button_caption='create';

										if($action=='update'){
											$id_service_category	=$data[0]->id_service_category;
											$en_name	=$data[0]->en_name;
											$kh_name	=$data[0]->kh_name;
											$en_description	=$data[0]->en_description;
											$kh_description	=$data[0]->kh_description;
											$is_published	= $data[0]->is_published;
											$button_caption='update';
										}
										$data_service_category=array();
										foreach($service_category as $row){
											$data_service_category[$row->en_name]=$row->id;
										}
									?>
								
								
								
									<?=form_open(base_url().'admin/all_service_displays_cud/'.$action.'/'.$id_service_category .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											select_field(array('caption'=>'Category', 'name'=>'id_service_category', 'data'=>$data_service_category, 'id'=>$id_service_category));
											text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
											text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
											textarea_field(array('caption'=>'Description (ENG)', 'name'=>'en_description', 'value'=>$en_description, 'required'=>'', 'required_message'=>''));
											textarea_field(array('caption'=>'Description (KHM)', 'name'=>'kh_description', 'value'=>$kh_description, 'required'=>'', 'required_message'=>''));
											boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
											button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/all_service_displays_cud/delete/'.$id_service_category.'/'.$id));
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
</div>
