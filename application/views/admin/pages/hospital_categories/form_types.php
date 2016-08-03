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
					            	<a href="<?=base_url()?>admin/<?=$term?>/form_types?action=create&id_hospital_category=<?=$id_hospital_category?>&id_type=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
									<a href="<?=base_url()?>admin/<?php echo $term ?>/types/?id_hospital_category=<?php echo $id_hospital_category;?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
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
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_type?id_hospital_category='.$id_hospital_category.'&id_type='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											
															text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
															text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
															boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
															button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/'.$term.'/delete_type?id_hospital_category='.$id_hospital_category.'&id_distrit='.$id));
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
			