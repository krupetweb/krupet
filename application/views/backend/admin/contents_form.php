<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/contents"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$en_name	=$data[0]->en_name;
					$kh_name	=$data[0]->kh_name;
					$en_content	=$data[0]->en_content;
					$kh_content	=$data[0]->kh_content;
					
				?>
			
			
			
				<?=form_open(base_url().'admin/update_contents/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						text_field(array('caption'=>'Page Name (ENG)', 'name'=>'en_name', 'value'=>$en_name,  'required'=>'required', 'required_message'=>'Value Required'));
						text_field(array('caption'=>'Page Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name,  'required'=>'required', 'required_message'=>'Value Required'));
						ck_editor_field(array('caption'=>'Content (ENG)', 'name'=>'en_content', 'value'=>$en_content, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						ck_editor_field(array('caption'=>'Content (KHM)', 'name'=>'kh_content', 'value'=>$kh_content, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						button_field(array('button_caption'=>'update', 'url_delete'=>'#'));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
<style>
	.btn-danger{display:none}
</style>
		