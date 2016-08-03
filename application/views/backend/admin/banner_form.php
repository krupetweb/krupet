<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/banners"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
						
						$name			=$data[0]->name;
						$banner			= base_url().$data[0]->banner;
						$is_banner_published	= $data[0]->is_banner_published;
						$modified_dt	=$data[0]->modified_dt;
						
				?>
			
				<?=form_open(base_url().'admin/banner_update/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						inform_field(array('caption'=>'Page Name', 'value'=>$name));
						image_field(array('caption'=>'Banner', 'name'=>'banner', 'image_src'=>$banner, 'file_required'=>'', 'note'=>'If the banner for page Hospitals, Doctors, and Specialist, Map, and Pharmacies, image size should be 1400x200 and, for other should be 1400x60.', 'required_message'=>''));
						boolean_field(array('caption'=>'Publish', 'name'=>'is_banner_published', 'value'=>$is_banner_published, 'id'=>$id));
						inform_field(array('caption'=>'Last Modified', 'value'=>$modified_dt));
						button_field(array('button_caption'=>'update', 'url_delete'=>'#'));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
<style>
	.btn-danger{
		display:none;
	}
</style>
		