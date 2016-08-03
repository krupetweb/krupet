
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
					            	<?php include('vertical_ads_display_fillter.php') ?>
					            </div>
								<div class="panel-body">
				                   <div id="data_container">
				                     
				                   	<?php

				                   		$id_ad=0;
										$note='';
										$is_published	=0;
										$modified_dt='';
										$button_caption='create';

										if($action=='update'){
											
											$note	=$data[0]->note;
											$id_ad	=$data[0]->id_ad;
											
											$is_published	= $data[0]->is_published;
											$button_caption='update';
										}
										$data_ads=array();
										foreach($ads as $row){
											$data_ads[$row->name]=$row->id;
										}
									?>
								
								
								
									<?=form_open(base_url().'admin/vertical_ads_displays_cud/'.$action.'/'.$id_page .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											select_field(array('caption'=>'Ads', 'name'=>'id_ad', 'data'=>$data_ads, 'id'=>$id_ad));
											textarea_field(array('caption'=>'Note', 'name'=>'note', 'value'=>$note, 'required'=>'', 'required_message'=>''));
											boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
											button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/vertical_ads_displays_cud/delete/'.$id_page.'/'.$id));
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
