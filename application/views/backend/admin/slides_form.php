<hr />

<div class="row">
	<div class="col-md-12">
		<div class="tabs-vertical-env">
			<div class="tab-content">
				<div class="tab-pane active"><div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
					        	<div class="panel-heading">
					            	<?php include('slides_fillter.php') ?>
					            </div>
								<div class="panel-body">
				                    <div id="vehicle_container">   
				                    <hr />
				                    <?php

				                    	$en_title			=	'';
				                    	$kh_title			=	'';
				                    	$image				=	'https://placeholdit.imgix.net/~text?txtsize=50&txt=1920%C3%97700&w=1920&h=700';
				                    	$is_published		=	0;

				                    	$image_required		=	'required';

				                    	if($action=='update'){
				                    		$en_title			=	$data[0]->en_title;
					                    	$kh_title			=	$data[0]->kh_title;
					                    	
					                    	$image				=	base_url().$data[0]->image;
					                    	$is_published		=	$data[0]->is_published;

					                    	$ck_finder_dir		=	'../../';
					                    	$image_required		=	'';
				                    	}

				                    ?>
									
									<?php 
					                	echo form_open(base_url() .'admin/slides_cud/'.$action.'/'.$id_slide_page.'/'.$id, array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));
											 
											 
											 text_field(array('caption'=>'Title (ENG)', 'name'=>'en_title', 'value'=>$en_title, 'required'=>'required', 'required_message'=>''));
											 text_field(array('caption'=>'Title (KHM)', 'name'=>'kh_title', 'value'=>$kh_title, 'required'=>'required', 'required_message'=>''));

					                    	 image_field(array('caption'=>'Image', 'note'=>'Image size should be 1200x700  with jpg format', 'name'=>'image', 'image_src'=>$image, 'file_required'=>$image_required, 'required_message'=>'Please slet and imaage'));

					                    	 boolean_field(array('caption'=>'Published', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					                    	 button_field($param=array('button_caption'=>$action, 'url_delete'=>base_url().'admin/slides_cud/delete/'.$id_slide_page.'/'.$id));
					                    
					                    echo form_close();
					                ?>
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









