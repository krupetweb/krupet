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
								</div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$en_services		='';
										$kh_services		='';
										$is_published	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if(isset($data->Id)){
										
											$id				= $data->Id;
											$en_services		= $data->en_services;
											$kh_services		= $data->kh_services;
											$modified_dt    = $data->modified_dt;
											$is_published	=	$data->is_published;		
											$button_caption='update';
										}
                                    
									?>
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_service?id_doctor='.$id_doctor.'&id_service='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										ck_editor_field(array('caption'=>'Service (ENG)', 'name'=>'en_services', 'value'=>$en_services, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Service (KHM)', 'name'=>'kh_services', 'value'=>$kh_services, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
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
			