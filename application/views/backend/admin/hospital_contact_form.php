<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
		<?php 
		include('hospital_tab.php')
		?>
			
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Contact Form
									</div>
									<a href="<?=base_url()?>admin/hospital_contact_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
								
									$en_address		='';
									$kh_address		='';
									$lan			=0;
									$lat			=0;
									$phone			='';
									$email 			='';
									$website		='';
									$working_hours	='';
									
									$button_caption='create';
									
									if($action=='update'){
									
										$en_address		= $data[0]->en_address;
										$kh_address		= $data[0]->kh_address;
										$lan 			= $data[0]->lan;
										$lat			= $data[0]->lat;
										$phone			= $data[0]->phone;
										$email			= $data[0]->email;
										$website		= $data[0]->website;
										$working_hours	= $data[0]->working_hours;
										
										
										$button_caption='update';
									}
									
									
									
								
								?>
							
							
							
								<?=form_open(base_url().'admin/hospital_contact_cud/'.$action.'/'.$id_hospital , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
								<?php 
									
									text_field(array('caption'=>'Address (ENG)', 'name'=>'en_address', 'value'=>$en_address, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Address (KHM)', 'name'=>'kh_address', 'value'=>$kh_address, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									number_field(array('caption'=>'Lan', 'name'=>'lan', 'value'=>$lan, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									number_field(array('caption'=>'Lat', 'name'=>'lat', 'value'=>$lat, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									textarea_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									email_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Website', 'name'=>'website', 'value'=>$website, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									textarea_field(array('caption'=>'Working hours', 'name'=>'working_hours', 'value'=>$working_hours, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_contact_cud/delete/'.$id_hospital));
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
<style type="text/css">
	.btn-danger{
		display:none;
	}
</style>