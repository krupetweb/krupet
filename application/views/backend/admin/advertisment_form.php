<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Advertisment Form
            	</div>
				<a href="<?=base_url()?>admin/advertisments"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
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
					
						$id				= $data[0]->id;
						$name		= $data[0]->name;
						
						$link			= $data[0]->link;
						$v_image			= base_url().$data[0]->v_image;
						$h_image			= base_url().$data[0]->h_image;
						$is_published	= $data[0]->is_published;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
					
				
				?>
			
			
			
				<?=form_open(base_url().'admin/advertisment_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'LINK', 'name'=>'link', 'value'=>$link, 'required'=>'', 'required_message'=>''));
					image_field(array('caption'=>'Horisiontal Image', 'name'=>'h_image', 'image_src'=>$h_image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					image_field(array('caption'=>'Vertical Image', 'name'=>'v_image', 'image_src'=>$v_image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/advertisment_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		