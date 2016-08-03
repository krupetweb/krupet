
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
		include('doctor_tab.php')
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
								</div>
								<div class="panel-body">
									<?php
										$id_province 	=0;
										$phone			='';
										$email 			='';
										
										$button_caption='create';
										
										if($action=='update'){
											$id_province	= $data[0]->id_province;
											$id_distrit		= $data[0]->id_distrit;
											$phone			= $data[0]->phone;
											$email			= $data[0]->email;
											$button_caption='update';
										}
										$provinces_data=array();
										foreach($provinces as $row){
											$provinces_data[$row -> en_name]=$row -> id;
										}

										$distrits_data=array();
										
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/doctor_contact_cud/'.$action.'/'.$id_doctor , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										select_field(array('caption'=>'Provinces', 'name'=>'id_province', 'data'=>$provinces_data, 'id'=>$id_province));
										select_field(array('caption'=>'Distrit', 'name'=>'id_distrit', 'data'=>$distrits_data, 'id'=>$id_distrit));
										
										email_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/doctor_contact_cud/delete/'.$id_doctor));
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
<script>
	$(document).ready(function(){
		get_distrit();
		$("#id_province").change(function(){
			get_distrit();
		})
	})

	function get_distrit(){
		id_province=$("#id_province").val();
		$.ajax({
            method:"POST",
            url: "<?php echo base_url(); ?>/admin/get_distrit",
            data: {
                 
                "id_province": id_province,
                "id_distrit": <?php echo $id_distrit; ?>
              
            }

        }).done(function(respond) {
            $("#id_distrit").html(respond);
        });
	}
</script>