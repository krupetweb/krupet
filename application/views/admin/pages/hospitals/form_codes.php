
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php  include('tab.php') ?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Code Generator
									</div>
									<a href="<?=base_url()?>admin/hospital_code_form/create/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
								</div>
								<div class="panel-body">
									<div id="form" class="form-horizontal"> 
										<div id="service-container" class="form-group">
											<label for="appr" class="col-sm-2 control-label">Appr</label>
											<div class="col-sm-10 " >
											  <input type="text" class="form-control" id="appr" placeholder="Type A Name of Appr" aria-describedby="service-error" />
											  <span id="service-error" style="display:none" class="help-block">Sorry! Please Type a name of Appr.</span>
											</div>
										</div>
										<div id="service-container" class="form-group">
											<label for="serial" class="col-sm-2 control-label">Serial</label>
											<div class="col-sm-10 " >
											  <input type="text" class="form-control" id="serial" placeholder="Type A Name of Serial" aria-describedby="service-error" />
											  <span id="service-error" style="display:none" class="help-block">Sorry! Please Type a serial.</span>
											</div>
										</div>
										<div id="service-container" class="form-group">
											<label for="number" class="col-sm-2 control-label">Number of code</label>
											<div class="col-sm-10 " >
											  <input type="text" class="form-control" id="number" placeholder="Type A Name of Service" aria-describedby="service-error" />
											  <span id="service-error" style="display:none" class="help-block">Sorry! Please number of cod</span>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<input type="hidden" id="id_hospital_code" value="0" />
											  <button id="btn-action"  onclick="generate_codes(<?php echo $id_hospital?>)" class="btn btn-primary"><i class="entypo-plus-circled"></i> Generate</button>
											</div>
										</div>
									</div>
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
	function generate_codes(id_hospital){
		
		//id_hospital = $("#id_hospital").val();
		//alert (id_hospital_service);
		appr = $("#appr").val();
		serial   = $("#serial").val();
		number   = $("#number").val();
		//::::::::::::::::::::::::::::::::::::::::::::>> Start to add Data
		$.ajax({
		  url: "<?php echo base_url() ?>admin/<?=$term?>/generate_codes",
		  method:"POST",
		  data:{"id_hospital":id_hospital, "appr":appr, "serial":serial, "number":number}
		}).done(function(respond) {
			toastr.success(respond);		
		});
	}

</script>


		


