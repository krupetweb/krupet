
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
										<i class="entypo-plus-circled"></i>Branch
									</div>
									<a href="<?=base_url()?>admin/hospital_branch_form/create/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
									<a href="<?=base_url()?>admin/hospital_branches/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Back </a>
								</div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$en_name		='';
										$kh_name		='';
										$working_hours		='';
										$phone		='';
										$email		='';
										$en_address		='';
										$kh_address		='';
										$lat		='';
										$lon		='';
										$id_distrit		=0;
										$id_province 	=0;

										$facebook_link	='';
										$website		='';

										$is_published	=0;
										$modified_dt='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data[0]->id;
											$en_name		= $data[0]->en_name;
											$kh_name		= $data[0]->kh_name;
											$working_hours		= $data[0]->working_hours;
											$phone		= $data[0]->phone;
											$email		= $data[0]->email;
											$en_address		= $data[0]->en_address;
											$kh_address		= $data[0]->kh_address;
											$lat		= $data[0]->lat;
											$lon		= $data[0]->lon;
											$id_province		= $data[0]->id_province;
											$id_distrit		= $data[0]->id_distrit;
											$website		= $data[0]->website;
											$facebook_link		= $data[0]->facebook_link;
											$is_published	= $data[0]->is_published;
											$modified_dt    = $data[0]->modified_dt;
											
											$button_caption='update';
										}

										$provinces_data=array();
										foreach($provinces as $row){
											$provinces_data[$row -> en_name]=$row -> id;
										}

										$distrits_data=array();
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_branch_cud/'.$action.'/'.$id_hospital.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Working Hours', 'name'=>'working_hours', 'value'=>$working_hours, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										select_field(array('caption'=>'Provinces', 'name'=>'id_province', 'data'=>$provinces_data, 'id'=>$id_province));
										select_field(array('caption'=>'Distrit', 'name'=>'id_distrit', 'data'=>$distrits_data, 'id'=>$id_distrit));
									
										textarea_field(array('caption'=>'Address(ENG)', 'name'=>'en_address', 'value'=>$en_address, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Address (KHM)', 'name'=>'kh_address', 'value'=>$kh_address, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										number_field(array('caption'=>'lat', 'name'=>'lat', 'value'=>$lat, 'required'=>'required', 'required_message'=>''));
										number_field(array('caption'=>'lon', 'name'=>'lon', 'value'=>$lon, 'required'=>'required', 'required_message'=>''));
										text_field(array('caption'=>'Webiste', 'name'=>'website', 'value'=>$website, 'required'=>'', 'required_message'=>''));
										text_field(array('caption'=>'Facebook Page Link', 'name'=>'facebook_link', 'value'=>$facebook_link, 'required'=>'', 'required_message'=>''));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_branch_cud/delete/'.$id_hospital.'/'.$id));
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
<script>
	$(document).ready(function(){
		get_distrit();
		$("#id_province").change(function(){
			get_distrit();
		})
	});

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



		


