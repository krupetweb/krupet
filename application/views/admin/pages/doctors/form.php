<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			<?php if($action=='update'){ ?>
			   <?php include('tab.php') ?>
			<?php } ?>

			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
					        	<div class="panel-heading">
					            	 <div class="panel-title">
					            	    <i class="entypo-plus-circled"></i><?=ucfirst($term)?> -> Overview
					            	</div>
									<a href="<?=base_url()?>admin/<?php echo $term ?>"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a> 
					            </div>
								<div class="panel-body">
									<?php
							
										$id_sex 		= 0;
										$id_specialist 	= 0;
										$id				=0;
										$id_sex			=0;
										$id_specialist	=0;
										$created_dt 	=0;
										$en_name		='';
										$kh_name		='';
										$en_title		='';
										$kh_title		='';
										$en_degree		='';
										$kh_degree		='';
										$lat			=0;
										$lon			=0;
										//$phone			='';
										//$email 			='';
										$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=1500%C3%97500&w=1500&h=500';
										$is_published	=0;
										$is_featured	=0;
										$modified_dt='';
									$button_caption='create';
									
									if($action=='update'){
									
										$id				= $data->id;
										$en_name		= $data->en_name;
										$kh_name		= $data->kh_name;
										$en_title	    = $data->en_title;
										$kh_title	    = $data->kh_title;
										$en_degree	    = $data->en_degree;
										$kh_degree	    = $data->kh_degree;
										$lat	        = $data->lat;
										$lon	        = $data->lon;
										$image			= base_url().$data->image;
										$is_published	= $data->is_published;
										$is_featured	= $data->is_featured;
										$modified_dt    = $data->modified_dt;
										$id_sex 		= $data->id_sex;
										$id_specialist 	= $data->id_specialist;
										$button_caption='update';
									}
									$sex_data=array();
										foreach($sex as $row){
											$sex_data[$row -> en_name]=$row -> id;
										}
									$specialists_data=array();
										foreach($specialists as $row){
											$specialists_data[$row -> en_name]=$row -> id;
										}
									
									
									
									
											
									
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_doctor?id_doctor='.$id_doctor , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
								   		text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										select_field(array('caption'=>'Sex', 'name'=>'id_sex', 'data'=>$sex_data, 'id'=>$id_sex),$id_sex);
										select_field(array('caption'=>'Specialist', 'name'=>'id_specialist', 'data'=>$specialists_data, 'id'=>$id_specialist),$id_specialist);
										text_field(array('caption'=>'Title (ENG)', 'name'=>'en_title', 'value'=>$en_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Title (KHM)', 'name'=>'kh_title', 'value'=>$kh_title, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Degree (ENG)', 'name'=>'en_degree', 'value'=>$en_degree, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Degree (KHM)', 'name'=>'kh_degree', 'value'=>$kh_degree, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										number_field(array('caption'=>'Lon', 'name'=>'lon', 'value'=>$lon, 'required'=>'', 'required_message'=>'Name is not allowed to be empty.'));
										number_field(array('caption'=>'Lat', 'name'=>'lat', 'value'=>$lat, 'required'=>'', 'required_message'=>'Name is not allowed to be empty.'));
										//textarea_field(array('caption'=>'Background (ENG)', 'name'=>'en_background', 'value'=>$en_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										//textarea_field(array('caption'=>'Background (KHM)', 'name'=>'kh_background', 'value'=>$kh_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										//textarea_field(array('caption'=>'Experien (ENG)', 'name'=>'en_experien', 'value'=>$en_experien, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										//textarea_field(array('caption'=>'Experien (KHM)', 'name'=>'kh_experien', 'value'=>$kh_experien, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										//text_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										//email_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
										boolean_field(array('caption'=>'Featured', 'name'=>'is_featured', 'value'=>$is_featured, 'id'=>$id));
									    button_field(array('button_caption'=>$action, 'url_delete'=>base_url().'admin/'.$term.'/delete/'.$id_doctor));
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
// <script>
// 	$(document).ready(function(){
// 		get_type();
// 		$("#id_doctor_category").change(function(){
// 			get_type();
// 		})
// 	});

// 	function get_type(){
// 		id_doctor_category=$("#id_doctor_category").val();
// 		$.ajax({
//             method:"POST",
//             url: "<?php echo base_url(); ?>/admin/<?=$term?>/get_type",
//             data: {
                 
//                 "id_doctor_category": id_doctor_category,
//                 "id_doctor_type": <?php echo $id_doctor_type; ?>
              
//             }

//         }).done(function(respond) {
//             $("#id_doctor_type").html(respond);
//         });
// 	}
// </script>
			