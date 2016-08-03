<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					$id				=0;
					$name		='';
					$link			='';
					$v_image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=1500%C3%97500&w=1500&h=500';
					$h_image			='https://placeholdit.imgix.net/~text?txtsize=30&txt=280%C3%97170&w=280&h=170';
					$is_published	=0;
					$modified_dt='';
					$button_caption='create';

					if($action=='update'){
						$id				= $data->id;
						$name		= $data->name;
						
						$link			= $data->link;
						$v_image			= base_url().$data->v_image;
						$h_image			= base_url().$data->h_image;
						$is_published	= $data->is_published;
						$modified_dt    = $data->modified_dt;
						
					}
				
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
					text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'LINK', 'name'=>'link', 'value'=>$link, 'required'=>'', 'required_message'=>''));
					image_field(array('caption'=>'Horisiontal Image', 'name'=>'h_image', 'image_src'=>$h_image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					image_field(array('caption'=>'Vertical Image', 'name'=>'v_image', 'image_src'=>$v_image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		