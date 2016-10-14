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
							
									
									    $id_province 	=0;
									    $id_distrit     =0;
										$phone			='';
										$hot_line			='';
										$email 			='';
										
									$button_caption='create';
									
									if($action=='update'){
									
										$id_province		= $data->id_province;
										$id_distrit		    = $data->id_distrit;
										$phone		        = $data->phone;
										$email	            = $data->email;
										$hot_line			= $data->hot_line;
										
										$button_caption='update';
									}
									$provinces_data=array();
										foreach($provinces as $row){
											$provinces_data[$row->en_name]=$row ->id;
										}


									$distrits_data=array();
									foreach($distrits as $row){
										$distrits_data[$row ->en_name]=$row -> id;
									}


									?>
								
								
								
									<?=form_open(base_url().'admin/'.$term.'/'.$action.'_contact?id_doctor='.$id_doctor , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
										<?php
								        select_field(array('caption'=>'Provinces', 'name'=>'id_province', 'data'=>$provinces_data, 'id'=>$id_province));
										select_field(array('caption'=>'Distrit', 'name'=>'id_distrit', 'data'=>$distrits_data, 'id'=>$id_distrit));
										email_field(array('caption'=>'Email', 'name'=>'email', 'value'=>$email, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Hot line', 'name'=>'hot_line', 'value'=>$hot_line, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
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
		get_distrit();
		$("#id_province").change(function(){
			get_distrit();
		})
	});

	function get_distrit(){
		id_province=$("#id_province").val();
		$.ajax({
			method:"POST",
			url: "<?php echo base_url(); ?>/admin/<?=$term?>/get_distrit",
			data: {

				"id_province": id_province,
				"id_distrit": <?php echo $id_distrit; ?>

			}

		}).done(function(respond) {
			$("#id_distrit").html(respond);
		});
	}
</script>

			