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
					            	<a href="<?=base_url()?>admin/<?php echo $term ?>/form_distrits?action=create&id_province=<?=$id_province?>&id_distrit=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
									<a href="<?=base_url()?>admin/<?php echo $term ?>/distrits?id_province=<?php echo $id_province;?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
					            </div>
								<div class="panel-body">
									<?php
										$id                =0;
										$en_name			='';
										$kh_name			='';
										$is_published		=0;
										$modified_dt		='';
                                        $button_caption='create';
										if($action=='update'){
										    $id				= $data->id;
											$en_name				= $data->en_name;
											$kh_name				= $data->kh_name;
											$is_published			= $data->is_published;
											$modified_dt    		= $data->modified_dt;
											$button_caption='update';
										}
											
									
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_distrit?id_province='.$id_province.'&id_distrit='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											
															text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
															text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
															boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
														button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/'.$term.'/delete_distrit?id_province='.$id_province.'&id_distrit='.$id));
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
			