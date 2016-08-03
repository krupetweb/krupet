
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
					            	<?php include('horizontal_ads_display_fillter.php') ?>
					            </div>
								<div class="panel-body">
				                   <div id="data_container">
				                     
				                   	<?php

				                   		$id_featured	=0;
										$note 			='';
										$type 			=1;
										$is_published	=0;
										$modified_dt 	='';
										$button_caption	='create';

										$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=1500%C3%97500&w=1500&h=500';

										if($action=='update'){
											
											$note	=$data[0]->note;
											$id_featured=$data[0]->id_featured;
											$type	=$data[0]->type;
											
											$is_published	= $data[0]->is_published;
											$button_caption='update';
										}

										$data_ad_types=array('Doctor'=>1, 'Hospital'=>2, 'Ads'=>3);
										
									?>
								
								
								
									<?=form_open(base_url().'admin/horizontal_ads_displays_cud/'.$action.'/'.$id_page .'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
											select_field(array('caption'=>'Type', 'name'=>'type', 'data'=>$data_ad_types, 'id'=>$type));
											number_field(array('caption'=>'Featured ID', 'name'=>'id_featured', 'value'=>$id_featured, 'required'=>'required', 'required_message'=>''));
											image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>''));
											textarea_field(array('caption'=>'Note', 'name'=>'note', 'value'=>$note, 'required'=>'', 'required_message'=>''));
											boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
											button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/horizontal_ads_displays_cud/delete/'.$id_page.'/'.$id));
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

<style>
	.btn-file, .btn-orange{
		display:none;
	}
</style>
<script>
	$(document).ready(function(){
		get_image();

		$('#type').change(function(){
			get_image();
		});

		$('#id_featured').keyup(function(){
			get_image();
		});
	});
	function get_image(){
		type=$('#type').val();
		id_featured=$('#id_featured').val();
		$.ajax({
				url: '<?=base_url()?>admin/horizontal_ads_displays_image/'+type+'/'+id_featured,
				success: function(response)
				{
					$('.fileinput-new img').attr('src', response);
					if(response==""){
						$('.fileinput-new img').attr('alt', 'Sorry! The ID you provide is not correct');
						
					}
				}
			});
	}
</script>
