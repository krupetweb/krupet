<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					$id					=0;
					$name				='';
					$url				='';
					$image				='https://placeholdit.imgix.net/~text?txtsize=50&txt=494%C3%97146&w=494&h=146';
					$image_light		='https://placeholdit.imgix.net/~text?txtsize=50&txt=494%C3%97146&w=494&h=146';
					$started_data		='';
					$finished_data		='';
					$is_published		=0;
					$is_featured			=0;
					$modified_dt		='';
					
					$button_caption='create';

					if($action=='update'){
						$id				= $data->id;
						$name	 		= $data->name;
						$url		    = $data->url;
						$image			= base_url().$data->image;
						$image_light	= base_url().$data->image_light;
						$started_data   =$data->started_data;
						$finished_data	=$data->finished_data;
						$is_published	= $data->is_published;
						$is_featured		= $data->is_featured;
						$modified_dt	=$data->modified_dt;
						
					}
					
						
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
					text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'URL', 'name'=>'url', 'value'=>$url, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					image_field(array('caption'=>'Image Light', 'name'=>'image_light', 'image_src'=>$image_light, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					boolean_field(array('caption'=>'Featured', 'name'=>'is_featured', 'value'=>$is_featured, 'id'=>$id));
						button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		