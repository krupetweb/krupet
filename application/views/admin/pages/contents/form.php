<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
				<a href="<?=base_url()?>admin/<?php echo $term; ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
			<?php 
                        $id				= $data->id;
						$en_content		= $data->en_content;
						$kh_content		= $data->kh_content;
			?>

				<?=form_open(base_url().'admin/'.$term.'/update?id='.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						inform_field(array('caption'=>'Page Name', 'value'=>$data->en_name));
						ck_editor_field(array('caption'=>'Content (ENG)', 'name'=>'en_content', 'value'=>$data->en_content, 'required'=>'required', 'required_message'=>'Value Required'));
						ck_editor_field(array('caption'=>'Content (KHM)', 'name'=>'kh_content', 'value'=>$data->kh_content, 'required'=>'required', 'required_message'=>'Value Required'));
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
		