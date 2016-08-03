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
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_galleries?action=create&id_phamacy=<?=$id_phamacy?>&id_gallery=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
					            </div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$en_title		='';
										$kh_title		='';
										$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=1500%C3%97500&w=1500&h=500';
										$is_published	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data->id;
											$en_title		= $data->en_title;
											$kh_title		= $data->kh_title;
											$image			= base_url().$data->image;
											$is_published	= $data->is_published;
											$modified_dt    = $data->modified_dt;
											
											$button_caption='update';
										}
                                  
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_gallery?id_phamacy='.$id_phamacy.'&id_gallery='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Title (ENG)', 'name'=>'en_title', 'value'=>$en_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Title (KHM)', 'name'=>'kh_title', 'value'=>$kh_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/'.$term.'/delete_gallery?id_phamacy='.$id_phamacy.'&id_gallery='.$id));
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
			