
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('sent_list_tab.php') ?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Sent list
									</div>
									<a href="<?=base_url()?>admin/sent_list_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
										
										$name		        ='';
										$button_caption='create';
										if($action=='update'){
											$name			= $data[0]->name;
											$button_caption='update';
										}
									?>
								
								
								
									<?=form_open(base_url().'admin/sent_list_cud/'.$action.'/'.$id_newsletter , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered valid_sent_listate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										
										
										text_field(array('caption'=>'Name (ENG)', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>''));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/sent_list_cud/delete/'.$id_newsletter));
									?>
										
									<?=form_close()?>
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>