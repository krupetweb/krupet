
<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('province_tab.php') ?>
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Distrit
									</div>
									<a href="<?=base_url()?>admin/distrit_form/create/<?=$id_province?>/0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a>
									<a href="<?=base_url()?>admin/distrits/<?=$id_province?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Back</a> 
								</div>
								<div class="panel-body">
									<?php
										$en_name		='';
										$kh_name		='';
										$lat			=0;
										$lon			=0;
										$is_published	=0;
										$modified_dt	='';
										$button_caption ='create';
										if($action=='update'){
											
											$en_name				= $data[0]->en_name;
											$kh_name				= $data[0]->kh_name;
											$lat					= $data[0]->lat;
											$lon					= $data[0]->lon;
											$is_published			= $data[0]->is_published;
											$modified_dt    		= $data[0]->modified_dt;
											$button_caption='update';
										}
									?>
								
								
								
									<?=form_open(base_url().'admin/distrit_cud/'.$action.'/'.$id_province.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered valid_productate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										
										text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>''));
										text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>''));
										number_field(array('caption'=>'Lon', 'name'=>'lon', 'value'=>$lon, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										number_field(array('caption'=>'Lat', 'name'=>'lat', 'value'=>$lat, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id_province));
										if($action=='update') inform_field(array('caption'=>'Modified Date', 'value'=>$modified_dt));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/distrit_cud/delete/'.$id_province.'/'.$id));
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