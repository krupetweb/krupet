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
					            	
									<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
					            </div>
								<div class="panel-body">
									<?php
										
										
									$id				=0;
									$en_name		='';
									$kh_name		='';
									$lat			=0;
									$lon			=0;
									$en_description		='';
									$kh_description		='';
									$is_published	=0;
									$modified_dt='';
										$button_caption='create';
										
										if($action=='update'){
											$en_name				= $data->en_name;
											$kh_name				= $data->kh_name;
											$lat				    = $data->lat;
											$lon				    = $data->lon;
											$en_description				= $data->en_description;
											$kh_description				= $data->kh_description;
											$is_published			= $data->is_published;
											$modified_dt    		= $data->modified_dt;
											
										}
										
											
									
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_province?id_province='.$id_province , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
															text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
															text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
															number_field(array('caption'=>'Lon', 'name'=>'lon', 'value'=>$lon, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									number_field(array('caption'=>'Lat', 'name'=>'lat', 'value'=>$lat, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Description (ENG)', 'name'=>'en_description', 'value'=>$en_description, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Description (KHM)', 'name'=>'kh_description', 'value'=>$kh_description, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
															boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
											button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
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
			