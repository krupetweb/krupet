<hr />

<div class="row">
	<div class="col-md-12">
	
		<div class="tabs-vertical-env">
		
			<div class="tab-content">
				<div class="tab-pane active">
					

					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
					        	<div class="panel-heading">
					            	<div class="panel-title" >
					            		<i class="entypo-plus-circled"></i>
										Config E-mail

					            	</div>
					        
					            </div>
								<div class="panel-body">
									
				                   
				                    <div id="vehicle_container">   
				                    <hr />
									<?php

											
											$user   		=$data[0]->user;
											$password       =$data[0]->password;
									        $host       	=$data[0]->host;
									        $security     	=$data[0]->security;
									        $port        	=$data[0]->port;

									        $port_data=array('25'=>'25', '465'=>'465', '587'=>'587');
									        $secure_data=array('Normal'=>'Normal', 'SSL'=>'SSL', 'TLS '=>'TLS');
									        


									?>
									

									<?php 
					                	echo form_open(base_url() . 'admin/edit_contact_email', array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));
											 
											 text_field(array('caption'=>'Host Name', 'name'=>'host', 'value'=>$host, 'required'=>'required', 'required_message'=>''));
											 select_field(array('caption'=>'Port', 'name'=>'port', 'id'=>$port, 'data'=>$port_data));
											 select_field(array('caption'=>'Security', 'name'=>'security', 'id'=>$security, 'data'=>$secure_data));
											 
											 email_field(array('caption'=>'User', 'name'=>'user', 'value'=>$user, 'required'=>'required', 'required_message'=>''));
					                    	 password_field(array('caption'=>'Password', 'name'=>'password', 'value'=>$password, 'required'=>'', 'required_message'=>''));
					                    	 
					                    	 button_field(array('button_caption'=>'update', 'url_delete'=>'#'));
					                    
					                    echo form_close();
					                ?>
					                </div>

					            </div>
					        </div>
					    </div>
					</div>

					
				</div>
			</div>
			
		</div>	
		<style>
		.btn-danger{display: none}
		</style>
	
	</div>
</div>
<script>











