<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					$id				=0;
					$name			='';
					$position		='';
					$description	='';
					$url     		='';
					$is_published	=0;
					$created_dt	='';
					$modified_dt	='';
					$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=494%C3%97146&w=494&h=146';
					
					$button_caption='create';

					if($action=='update'){
						$id				= $data->id;
						$name			= $data->name;
						$image			= base_url().$data->image;
						$position		= $data->position;
						$description	= $data->description;
						$url		    = $data->url;
						$is_published	= $data->is_published;
						$created_dt    	= $data->created_dt;
						$modified_dt    = $data->modified_dt;
						
					}
				
					
						
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
					text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Position', 'name'=>'position', 'value'=>$position, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Description', 'name'=>'description', 'value'=>$description, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Url', 'name'=>'url', 'value'=>$url, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		