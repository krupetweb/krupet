
<div class="container pd-right-0">
	<div class="col-xs-12">
		<section class="nopadding clearfix text-center">
			<h2 class="color-black border-red">Hotline </h2>
			<div class="col-sm-12 text-center">
				<div class="row text-center">
		          	<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
		             	<div class="no-margin-bottom form-group ">
								<select class="form-control search-control" id="phone_type" name="phone_type" style="margin:auto;">
									<option value="">Select Type</option>
									<?php foreach($phone_types as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->name; ?></option>
									<?php } ?>
								</select>
						</div>
		            </div>
		            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
		             	<div class="no-margin-bottom form-group ">
								<select class="form-control search-control" onchange="get_distrits()" id="province" name="id_type">
									<option value=""><?php echo get_lang('select-province');?></option>
									<?php foreach($provinces as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->name; ?></option>
									<?php } ?>
								</select>
							
						</div>
		            </div>
		            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
		             	<div class="no-margin-bottom form-group ">
								<select class="form-control search-control" id="distrit" >
									<option value=""><?php echo get_lang('select-distrit');?></option>
								</select>
							
						</div>
		            </div>
		            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
		             	<button id="btn-search-phone" class="btn btn-default search-button" ><i class="fa fa-search"></i> Search!</button>
		            </div>
		        </div>

		        <div id="phone-container" class="row">
		          	
		        </div>
			</div>
		</section>
	</div>
</div>


<script>
	$(function(){
		$("#btn-search-phone").click(function(){
			phone_fillter();
		});
		phone_fillter();
	});

	function phone_fillter(){
			$("#btn-search-phone").html("<img src='<?=$src_url?>assets/backend/images/loader-2.gif' />")
			type=$('#phone_type').val();
			province=$("#province").val();
			distrit=$("#distrit").val();

			$.ajax({
	                method:"POST",
	                url: "<?=$lang_url?>get-phones",
	                data: {
	                    "type" 		: type, 
	                    "province"	: province, 
	                    "distrit" 	: distrit
	                }
	            }).done(function(respond) {
	            	$("#btn-search-phone").html('<i class="fa fa-search"></i> Search!');

	                $("#phone-container").html(respond);
	            });
	}

	function get_distrits(){
		var province=$('#province').val();
		var distrit=$("#distrit").val();
		if(province!=''){
				$.ajax({
	                method:"POST",
	                url: "<?=$lang_url?>get-distrits",
	                data: {
	                    "province": province
	                }
	            }).done(function(respond) {
	            	obj=JSON.parse(respond);
	               first="";
	               others="";
	               for(i=0; i<obj.length; i++){
	               		if(obj.id==distrit){
	               			first="<option value='"+obj[i].id+"'>"+obj[i].name+"</option>";
	               		}else{
	               			others+="<option value='"+obj[i].id+"'>"+obj[i].name+"</option>";
	               		}
	               }
	               $("#distrit").html(first+"<option value='0'><?php echo get_lang('select-distrit');?></option>"+others);
	            });
		}
	}
</script>