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
										$en_name			='';
										$kh_name			='';
										$is_published		=0;
										$modified_dt		='';
										$button_caption='create';
										
										if($action=='update'){
											
											$en_name				= $data->en_name;
											$kh_name				= $data->kh_name;
											$is_published			= $data->is_published;
											$modified_dt    		= $data->modified_dt;
											
										}
											
									
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_hospital_category?id_hospital_category='.$id_hospital_category , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
											text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
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
			