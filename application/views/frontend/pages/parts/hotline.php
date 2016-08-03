			<style>
				.no-margin-bottom{
					margin-bottom: 0px !important;
				}
				#btn-search-phone{
					margin-top:5px;
				}
				.search-control{
					width:100% !important;
				}
			</style>
			<div class="container">
				<div class="container">
					<div class="row">
			          	<div class="col-xs-12 text-center">
			            	<h2 class="border-last"> <i class="fa fa-phone"></i> <?php echo get_lang('urgent'); ?></h2>
			            	<span class="blue-border2"></span> 

			          	</div>
			        </div>
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
										<option value="">Select Province</option>
										<?php foreach($provinces as $row){ ?>
											<option value="<?php echo $row->id; ?>"><?php echo $row->name; ?></option>
										<?php } ?>
									</select>
								
							</div>
			            </div>
			            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
			             	<div class="no-margin-bottom form-group ">
									<select class="form-control search-control" id="distrit" >
										<option value="">Select Distrit</option>
									</select>
								
							</div>
			            </div>
			            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-center">
			             	<div class="form-group">
								<button id="btn-search-phone" class="btn btn-default search-button" ><i class="fa fa-search"></i> Search!</button>
							</div>
			            </div>
			        </div>

			        <div id="phone-container" class="row">
			          	
			        </div> 
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
				               $("#distrit").html(first+"<option value='0'>Select A Distrit</option>"+others);
				            });
					}
				}
			</script>