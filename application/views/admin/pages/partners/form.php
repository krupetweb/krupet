<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/partners"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id					=0;
					$type		    =1;
					$name			='';
					$url			='';
					$description	='';
					$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=193%C3%97193&w=193&h=193';
					$is_published		=0;
					$modified_dt		='';
					$button_caption='create';
					
					if($action=='update'){
						$id					=$data->id;
						$type		        =$data->type;
						$name			    =$data->name;
						$url			    =$data->url;
						$description		=$data->description;
						$image				= base_url().$data->image;
						$is_published		= $data->is_published;
						$modified_dt		=$data->modified_dt;	
					}
					$types_data=array('Official Sponsors'=>2, 'Potential Partner'=>1);
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						select_field(array('caption'=>'Type', 'name'=>'type', 'data'=>$types_data, 'id'=>$type));
						text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'URL', 'name'=>'url', 'value'=>$url, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					textarea_field(array('caption'=>'Description', 'name'=>'description', 'value'=>$description, 'required'=>'', 'required_message'=>''));
					image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$type));
						
						button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		