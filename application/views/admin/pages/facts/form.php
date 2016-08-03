<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	
				<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					$id				=0;
					$total_project		='';
					$website		='';
					$ios		='';
					$android		='';
					$system	     ='';
					
					$button_caption='create';

					if($action=='update'){
						$id				= $data->id;
						$total_project	= $data->total_project;
						$website		= $data->website;
						$ios	     	= $data->ios;
						$android		= $data->android;
						$system	    	= $data->system;
						
					}
					
						
				
				
				?>
			
			
			
				<?=form_open(base_url().'admin/'.$term.'/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
						text_field(array('caption'=>'Total Project', 'name'=>'total_project', 'value'=>$total_project, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						text_field(array('caption'=>'Website', 'name'=>'website', 'value'=>$website, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						ck_editor_field(array('caption'=>'IOS', 'name'=>'ios', 'value'=>$ios, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						ck_editor_field(array('caption'=>'Android', 'name'=>'android', 'value'=>$android, 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required'));
						text_field(array('caption'=>'system', 'name'=>'system', 'value'=>$system, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
						button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
		