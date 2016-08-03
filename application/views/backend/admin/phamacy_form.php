
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
		include('phamacy_tab.php')
		?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Hospital Form
									</div>
									<a href="<?=base_url()?>admin/phamacy_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
								
									$id_province	=0;
									$id_distrit		=0;
									$en_name		='';
									$kh_name		='';
									$en_address	='';
									$kh_address	='';
									$en_background	='';
									$kh_background	='';
									$phone 			='';
									$email 			='';
									$working_hour	='';
									$website 		='';
									$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=300%C3%97200&w=300&h=200';
									$Lat 			=0;
									$lon 			=0;
									$is_published	=0;
									$is_published	=0;
									
									$modified_dt='';
									
									$button_caption='create';
									
									if($action=='update'){
									
										$id				= $data[0]->id;
										$id_province	= $data[0]->id_province;
										$id_distrit		= $data[0]->id_distrit;
										$en_name		= $data[0]->en_name;
										$kh_name		= $data[0]->kh_name;
										$en_address		= $data[0]->en_address;
										$kh_address		= $data[0]->kh_address;
										$en_background	= $data[0]->en_background;
										$kh_background	= $data[0]->kh_background;
										$phone			= $data[0]->phone;
										$email			= $data[0]->email;
										$working_hour	= $data[0]->working_hour;
										$website		= $data[0]->website;
										$lat			= $data[0]->lat;
										$lon			= $data[0]->lon;
										//$en_address		= $data[0]->en_address;
										//$kh_address		= $data[0]->kh_address;
										//$lan 			= $data[0]->lan;
										//$lat			= $data[0]->lat;
										//$phone			= $data[0]->phone;
										//$email			= $data[0]->email;
										//$website		= $data[0]->website;
										//$working_hours	= $data[0]->working_hours;
										$image			= base_url().$data[0]->image;
										$is_published	= $data[0]->is_published;
										
										$modified_dt    = $data[0]->modified_dt;
										
										$button_caption='update';
									}
									$provinces_data=array();
										foreach($provinces as $row){
											$provinces_data[$row -> en_name]=$row -> id;
										}
									$distrits_data=array();
									foreach($distrits as $row){
										$distrits_data[$row -> en_name]=$row -> id;
									}
								?>
							
							
							
								<?=form_open(base_url().'admin/phamacy_cud/'.$action.'/'.$id_phamacy , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
								<?php 
									text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									select_field(array('caption'=>'Provinces', 'name'=>'id_province', 'data'=>$provinces_data, 'id'=>$id_province));
									select_field(array('caption'=>'Distrit', 'name'=>'id_distrit', 'data'=>$distrits_data, 'id'=>$id_distrit));
									//select_field(array('caption'=>'Type', 'name'=>'id_hospital_type', 'data'=>$types_data, 'id'=>$id_hospital_type));
									//select_field(array('caption'=>'Categoey', 'name'=>'id_hospital_category', 'data'=>$categories_data, 'id'=>$id_hospital_category));
									//text_field(array('caption'=>'Director (ENG)', 'name'=>'en_director', 'value'=>$en_director, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									//text_field(array('caption'=>'Director (KHM)', 'name'=>'kh_director', 'value'=>$kh_director, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									//select_field(array('caption'=>'Provinces', 'name'=>'id_province', 'data'=>$provinces_data, 'id'=>$id_province));
									ck_editor_field(array('caption'=>'Background (ENG)', 'name'=>'en_background', 'value'=>$en_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									ck_editor_field(array('caption'=>'Background (KHM)', 'name'=>'kh_background', 'value'=>$kh_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Address (ENG)', 'name'=>'en_address', 'value'=>$en_address, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Address (KHM)', 'name'=>'kh_address', 'value'=>$kh_address, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									number_field(array('caption'=>'Lon', 'name'=>'lon', 'value'=>$lon, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									number_field(array('caption'=>'Lat', 'name'=>'lat', 'value'=>$lat, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									//email_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Website', 'name'=>'website', 'value'=>$website, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Working hours', 'name'=>'working_hour', 'value'=>$working_hour, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
									boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id_phamacy));
									
									button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/phamacy_cud/delete/'.$id_phamacy));
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
                 
                "id_province": id_province
              
            }

        }).done(function(respond) {
            $("#id_distrit").html(respond);
        });
	}
</script>
