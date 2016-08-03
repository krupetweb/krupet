
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
										<i class="entypo-plus-circled"></i>Hospital Form
									</div>
									<a href="<?=base_url()?>admin/hospital_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
									$is_rated_by		=0;
									$id_hospital_type		=0;
									$id_hospital_category	=0;
									$id_distrit		=0;
									$id_province 	=0;
									$en_name		='';
									$kh_name		='';
									$en_background	='';
									$kh_background	='';
									$en_director	='';
									$kh_director	='';
									$image			='https://placeholdit.imgix.net/~text?txtsize=50&txt=1500%C3%97500&w=1500&h=500';
									$is_published	=0;
									$is_featured	=0;
									$modified_dt='';
									
									$button_caption='create';
									
									if($action=='update'){
									
										$id				= $data[0]->id;
										$is_rating_code_required		= $data[0]->is_rating_code_required;
										$id_hospital_type		= $data[0]->id_hospital_type;
										$id_hospital_category	= $data[0]->id_hospital_category;
										$en_name		= $data[0]->en_name;
										$kh_name		= $data[0]->kh_name;
										$en_background	= $data[0]->en_background;
										$kh_background	= $data[0]->kh_background;
										$en_director	= $data[0]->en_director;
										$kh_director	= $data[0]->kh_director;
										$image			= base_url().$data[0]->image;
										$is_published	= $data[0]->is_published;
										$is_featured	= $data[0]->is_featured;
										$modified_dt    = $data[0]->modified_dt;
										
										$button_caption='update';
									}
									
									$types_data=array();
									foreach($types as $row){
										$types_data[$row -> en_name]=$row -> id;
									}
									$categories_data=array();
									foreach($categories as $row){
										$categories_data[$row -> en_name]=$row -> id;
										
									}
									
									
									
								
								?>
							
							
							
								<?=form_open(base_url().'admin/hospital_cud/'.$action.'/'.$id_hospital , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
								<?php 
									text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									select_field(array('caption'=>'Categoey', 'name'=>'id_hospital_category', 'data'=>$categories_data, 'id'=>$id_hospital_category));
									select_field(array('caption'=>'Type', 'name'=>'id_hospital_type', 'data'=>$types_data, 'id'=>$id_hospital_type));
									text_field(array('caption'=>'Director (ENG)', 'name'=>'en_director', 'value'=>$en_director, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									text_field(array('caption'=>'Director (KHM)', 'name'=>'kh_director', 'value'=>$kh_director, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									ck_editor_field(array('caption'=>'Background (ENG)', 'name'=>'en_background', 'value'=>$en_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									ck_editor_field(array('caption'=>'Background (KHM)', 'name'=>'kh_background', 'value'=>$kh_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
									image_field(array('caption'=>'Image', 'name'=>'image', 'image_src'=>$image, 'file_required'=>'', 'required_message'=>'Please slet and imaage'));
									boolean_field(array('caption'=>'Rate Code Required', 'name'=>'is_rating_code_required', 'value'=>$is_rating_code_required, 'id'=>$id_hospital));
									boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id_hospital));
									boolean_field(array('caption'=>'Featured', 'name'=>'is_featured', 'value'=>$is_featured, 'id'=>$id_hospital));
									button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_cud/delete/'.$id_hospital));
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
		get_type();
		$("#id_hospital_category").change(function(){
			get_type();
		})
	});

	function get_type(){
		id_hospital_category=$("#id_hospital_category").val();
		$.ajax({
            method:"POST",
            url: "<?php echo base_url(); ?>/admin/get_type",
            data: {
                 
                "id_hospital_category": id_hospital_category,
                "id_hospital_type": <?php echo $id_hospital_type; ?>
              
            }

        }).done(function(respond) {
            $("#id_hospital_type").html(respond);
        });
	}
</script>
