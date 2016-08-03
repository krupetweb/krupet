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
										Fact
					            	</div>
					            </div>
								<div class="panel-body">
				                    <div id="vehicle_container">   
				                    <hr />
									<?php
											$total_project   		=$data[0]->total_project;
											$website		        =$data[0]->website;
									        $ios			       	=$data[0]->ios;
									        $android             	=$data[0]->android;
									        $system                	=$data[0]->system;
									        $social                	=$data[0]->social;
									        $port_data=array('25'=>'25', '465'=>'465', '587'=>'587');
									        $secure_data=array('Normal'=>'Normal', 'SSL'=>'SSL', 'TLS '=>'TLS');
									        


									?>
									

									<?php 
					                	echo form_open(base_url() . 'admin/facts/update_fact', array('class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));
											 
											 text_field(array('caption'=>'Total Project', 'type'=>'number', 'name'=>'total_project', 'value'=>$total_project, 'required'=>'required', 'required_message'=>''));
											 text_field(array('caption'=>'Website', 'name'=>'website', 'value'=>$website, 'required'=>'required', 'required_message'=>''));
											 text_field(array('caption'=>'IOS', 'name'=>'ios', 'value'=>$ios, 'required'=>'required', 'required_message'=>''));
					                    	 text_field(array('caption'=>'Android', 'name'=>'android', 'value'=>$android, 'required'=>'required', 'required_message'=>''));
					                    	 text_field(array('caption'=>'System', 'name'=>'system', 'value'=>$android, 'required'=>'required', 'required_message'=>''));
					                    	  text_field(array('caption'=>'Social', 'name'=>'social', 'value'=>$social, 'required'=>'required', 'required_message'=>''));
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











