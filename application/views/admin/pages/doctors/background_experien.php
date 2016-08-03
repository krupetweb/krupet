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
							
									
									    $en_background	='';
										$kh_background	='';
										$en_experien	='';
										$kh_experien	='';
										
									$button_caption='create';
									
									if($action=='update'){
									
										$en_background				= $data->en_background;
										$kh_background		= $data->kh_background;
										$en_experien		= $data->en_experien;
										$kh_experien	    = $data->kh_experien;
										
										
										$button_caption='update';
									}
									
									
									
									
											
									
									
									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_background?id_doctor='.$id_doctor , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
								        ck_editor_field(array('caption'=>'Background (ENG)', 'name'=>'en_background', 'value'=>$en_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Background (KHM)', 'name'=>'kh_background', 'value'=>$kh_background, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Experien (ENG)', 'name'=>'en_experien', 'value'=>$en_experien, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										ck_editor_field(array('caption'=>'Experien (KHM)', 'name'=>'kh_experien', 'value'=>$kh_experien, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
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
<script>
	$(document).ready(function(){
		get_type();
		$("#id_doctor_category").change(function(){
			get_type();
		})
	});

	function get_type(){
		id_doctor_category=$("#id_doctor_category").val();
		$.ajax({
            method:"POST",
            url: "<?php echo base_url(); ?>/admin/<?=$term?>/get_type",
            data: {
                 
                "id_doctor_category": id_doctor_category,
                "id_doctor_type": <?php echo $id_doctor_type; ?>
              
            }

        }).done(function(respond) {
            $("#id_doctor_type").html(respond);
        });
	}
</script>
			