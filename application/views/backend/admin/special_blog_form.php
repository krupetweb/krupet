
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
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Image
									</div>
									
									<a href="<?=base_url()?>admin/add_spcial_blog/?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a>
									<a href="<?=base_url()?>admin/special_blog"  class="btn btn-primary pull-right"><i class="entypo-back"></i>Back</a>
								</div>
								<div class="panel-body">
									<?php
										
										
										$id		=0;
										$button_caption='create';
										
									?>
								
								
								
									<?=form_open(base_url().'admin/add_special_blog/', array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php
										text_field(array('caption'=>'Blog Name', 'name'=>'blog_name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/special_hospital_cud/delete/'.$id));
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
<link rel="stylesheet" href="<?php echo base_url()?>assets/backend/css/jquery-ui.css">
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript">
	$(function(){
		$( "#blog_name" ).autocomplete({
		  source: availableTags
		});
	});
	
	var availableTags = [
      <?php 
		foreach($special_blog as $row){
			echo '"'.$row->en_title .'",';
		}
	  ?>
	  ""
    ];
</script>