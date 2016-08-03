<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Notification Form
            	</div>
				<a href="<?=base_url()?>admin/product_categories"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
		
						$name			= $data[0]->name;
						$email			= $data[0]->email;
						$subject		= $data[0]->subject;
						$message		= $data[0]->message;
						$created_dt    = $data[0]->created_dt;
					
				?>
			
			
			
				<?=form_open("#" , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
					<?php
					text_field(array('caption'=>'From', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>''));
					text_field(array('caption'=>'E-mail', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'.'));
					text_field(array('caption'=>'Subject', 'name'=>'subject', 'value'=>$subject, 'required'=>'required', 'required_message'=>''));
					textarea_field(array('caption'=>'Message', 'name'=>'message', 'value'=>$message, 'required'=>'required', 'required_message'=>''));
					button_field(array('button_caption'=>"update", 'url_delete'=>base_url().'admin/notifications_delete/'.$id_notification));
					?>
					
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>

<style>
	.btn-info{
		display:none;
	}
</style>
		