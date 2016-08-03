<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
		include('blog_tab.php')
		?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Blog Tag
									</div>
									<button id="btn-close" style="display:none" onclick="close_form()" class="btn btn-primary pull-right"><i class="entypo-cancel-circled"></i>Close  </button>
									<button id="btn-add-new" style="margin:0 10px" onclick="display_form_for_add()" class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </button>
								</div>
								<div class="panel-body"> 
									<div id="form" class="form-horizontal" style="display:none">
										
										<div id="tag-container" class="form-group">
											<label for="tag" class="col-sm-2 control-label">Tag Name</label>
											<div class="col-sm-10 " >
											  <input type="text" class="form-control" id="tag" placeholder="Type A Name of Tag" aria-describedby="tag-error" />
											  <span id="tag-error" style="display:none" class="help-block">Sorry! Please Type a name of specialist.</span>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-offset-2 col-sm-10">
												<input type="hidden" id="id_blog_tag" value="0" />
											  <button id="btn-action"  onclick="add_edit(<?php echo $id?>)" class="btn btn-primary"><i class="entypo-plus-circled"></i> Create</button>
											</div>
										</div>
									</div>
								</div>
								<div class="panel-body"> 
											   <br><br>
									<table class="table table-bordered datatable" >
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Name</th>
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
		$("#tag").val("");
	}
	
	function add_edit(id_blog){
		
		id_blog_tag = $("#id_blog_tag").val();
		tag = $("#tag").val();
		
		if(tag!=""){
			$("#tag-container").removeClass("has-error");
			$("#tag-error").hide();
			
				//::::::::::::::::::::::::::::::::::::::::::::>> Start to add Data
					$.ajax({
					  url: "<?php echo base_url() ?>admin/blog_tag_add_edit",
					  method:"POST",
					  data:{"id_blog_tag":id_blog_tag, "id_blog":id_blog, "tag":tag}
					}).done(function(respond) {
						if(respond==1){
							if(id_blog_tag==0){
								toastr.success("Data has been added");
								clear_form();
							}else{
								toastr.success("Data has been update");
							}
							
							get_data(id_blog);
							
							
						}else{
							infomation_modal("Sorry! Data is not added because price name is not found in the database.");
							$("#tag-container").addClass("has-error");
						}
					});
					
			
		}else{
			$("#tag-container").addClass("has-error");
			$("#tag-error").show();
		}
	}
	function get_data_to_edit(id, id_blog,en_name){
		$("#tag").val(en_name);
		$("#id_blog_tag").val(id);
		display_form_for_edit();
	}
	
	function get_data(id_blog){
		$.ajax({
		  url: "<?php echo base_url() ?>admin/get_blog_tag/"+id_blog
		}).done(function(respond) {
		  $( "#data_container" ).html( respond );
		});
	}
	$( document ).ready(function() {
		get_data(<?php echo $id?>);
	});
	$(function(){
		$( "#tag" ).autocomplete({
		  source: availableTags
		});
	});
	
	var availableTags = [
      <?php 
		foreach($tags as $row){
			echo '"'.$row->en_name .'",';
		}
	  ?>
	  ""
    ];
</script>