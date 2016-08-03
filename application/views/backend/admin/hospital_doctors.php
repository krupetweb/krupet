
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
										<i class="entypo-plus-circled"></i>Hospital Services
									</div>
									<button id="btn-close" style="display:none" onclick="close_form()" class="btn btn-primary pull-right"><i class="entypo-cancel-circled"></i>Close  </button>
									<button id="btn-add-new" style="margin:0 10px" onclick="display_form_for_add()" class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </button>
								</div>
								<div class="panel-body"> 
									<div id="form" class="form-horizontal" style="display:none">
										
										<div id="doctor-container" class="form-group">
											<label for="doctor" class="col-sm-2 control-label">Doctor Name</label>
											<div class="col-sm-10 " >
											  <input type="text" class="form-control" id="doctor" placeholder="Type A Name of Doctor" aria-describedby="doctor-error" />
											  <span id="doctor-error" style="display:none" class="help-block">Sorry! Please Type a name of doctor.</span>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<input type="hidden" id="id_hospital_doctor" value="0" />
											  <button id="btn-action"  onclick="add_edit(<?php echo $id_hospital?>)" class="btn btn-primary"><i class="entypo-plus-circled"></i> Create</button>
											</div>
										</div>
									</div>
								</div>
								<div class="panel-body"> 
											 
									<table class="table table-bordered datatable">
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Name</th>
												<th>Image</th>
												<th>Modified Date</th>
												<th></th>
											</tr>
										</thead>
										<tbody id="data_container">
										
										</tbody>
									</table>
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
	
	function close_form(){
		$("#form").hide("slow");
		$("#btn-add-new").show();
		$("#btn-close").hide();
		clear_form();
	}
	
	function display_form_for_add(){
		$("#form").show("slow");
		$("#btn-add-new").hide();
		$("#btn-close").show();
		clear_form();
	}
	
	function display_form_for_edit(){
		$("#form").show("slow");
		$("#btn-add-new").show();
		$("#btn-close").show();
		$("#btn-action").html("<i class='entypo-plus-circled'></i> Update");
	}
	
	function clear_form(){
		$("#doctor").val("");
	}
	
	function add_edit(id_hospital){
		
		id_hospital_doctor = $("#id_hospital_doctor").val();
		doctor = $("#doctor").val();
		
		if(doctor!=""){
			$("#doctor-container").removeClass("has-error");
			$("#doctor-error").hide();
			
				//::::::::::::::::::::::::::::::::::::::::::::>> Start to add Data
					$.ajax({
					  url: "<?php echo base_url() ?>admin/hospital_doctor_add_edit",
					  method:"POST",
					  data:{"id_hospital_doctor":id_hospital_doctor, "id_hospital":id_hospital, "doctor":doctor}
					}).done(function(respond) {
						if(respond==1){
							if(id_hospital_doctor==0){
								toastr.success("Data has been added");
								clear_form();
							}else{
								toastr.success("Data has been update");
							}
							
							get_data(id_hospital);
							
							
						}else{
							infomation_modal("Sorry! Data is not added because price name is not found in the database.");
							$("#doctor-container").addClass("has-error");
						}
					});
					
			
		}else{
			$("#doctor-container").addClass("has-error");
			$("#doctor-error").show();
		}
	}
	function get_data_to_edit(id, id_hospital,en_name){
		$("#doctor").val(en_name);
		$("#id_hospital_doctor").val(id);
		display_form_for_edit();
	}
	
	function get_data(id_hospital){
		$.ajax({
		  url: "<?php echo base_url() ?>admin/get_hospital_doctors/"+id_hospital
		}).done(function(respond) {
		  $( "#data_container" ).html( respond );
		});
	}
	$( document ).ready(function() {
		get_data(<?php echo $id_hospital?>);
	});
	$(function(){
		$( "#doctor" ).autocomplete({
		  source: availableTags
		});
	});
	
	var availableTags = [
      <?php 
		foreach($doctors as $row){
			echo '"'.$row->en_name .'",';
		}
	  ?>
	  ""
    ];
</script>