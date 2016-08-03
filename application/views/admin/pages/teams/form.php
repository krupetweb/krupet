<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id					=0;
					$en_name			='';
					$kh_name			='';
					$en_position	='';
					$kh_position		='';
					$facebook_link		='';
					$image				='https://placeholdit.imgix.net/~text?txtsize=50&txt=448%C3%97447&w=448&h=447';
					$is_published		=0;
					$modified_dt		='';
					
					if($action=='update'){
						$id					=$data->id;
						$en_name			=$data->en_name;
						$kh_name			=$data->kh_name;
						$en_position		=$data->en_position;
						$kh_position		=$data->kh_position;
						$facebook_link		=$data->facebook_link;
						$image				= base_url().$data->image;
						$is_published		= $data->is_published;
						$modified_dt		=$data->modified_dt;
					}
						
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'?id='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						text_field(array('caption'=>'Facebook Link', 'name'=>'facebook_link', 'value'=>$facebook_link, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						textarea_field(array('caption'=>'Position (ENG)', 'name'=>'en_position', 'value'=>$en_position, 'required'=>'', 'required_message'=>''));
						textarea_field(array('caption'=>'Position (KHM)', 'name'=>'kh_position', 'value'=>$kh_position, 'required'=>'', 'required_message'=>''));
						image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
						boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
						button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		