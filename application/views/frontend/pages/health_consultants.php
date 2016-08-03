
				<style type="text/css">
					.this-form{
						color:black !important;
						padding:0px !important;
						margin:0px !important;
						font-size: 14px !important;
						min-height:25px !important;
						border-color:gray !important;
						padding:5px 10px !important;
					}
					.scoring-visible{

					}
					.form-widget {
					    padding: 0px 15px 0 0;
					}

				</style>
				<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/frontend/css/rating.css" id="style-switch" />
				
				<?php include('parts/banner.php'); ?>
				
				<div class="container">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div id="contact-frm" class="row">
								<div class="form-widget">
			                    	<div class="appointment-form-title">&nbsp;&nbsp;<i class="fa fa-info-circle"></i>&nbsp;<?php echo get_lang('your_information');?></div>
			                        <form class="appt-form">
			                        	<input id="name" type="text" class="appt-form-txt" placeholder="<?php echo get_lang('name');?>" required>
				                        <!--
				                        <select id="sex" class="appt-form-select" style="color:red;">
					                        <option value="M">Male</option>
										    <option value="F">Female</option>
				                        </select>
				                        -->
				                        <input type="radio" name="sex" id="male" value="Male" checked> <?php echo get_lang('male');?> &nbsp;&nbsp;&nbsp;
										<input type="radio" name="sex" id="female" value="Female"><?php echo get_lang('female');?><br>

				                        <input id="age" type="text" class="appt-form-txt" placeholder="<?php echo get_lang('age');?>" required>
				                        <input id="email" type="email" class="appt-form-txt" placeholder="<?php echo get_lang('email');?>" required>
				                        <input id="phone" type="text" class="appt-form-txt" placeholder="<?php echo get_lang('phone_number');?>" required>
				                       
				                        <input id="weight" type="text" class="appt-form-txt" placeholder="<?php echo get_lang('weight');?>" required>
				                        <input id="place_of_living" type="text" class="appt-form-txt" placeholder="<?php echo get_lang('place_of_living');?>">
				                        <textarea id="description" class="appt-form-txt" style="min-height:200px;" placeholder="<?php echo get_lang('tell_your_symtom');?>..."></textarea>
				                        <section class="color-7" id="">
						                	<button type="submit" value="Send" class=" btn2-st2 btn-7 btn-7b iform-button-60" style="padding:7px 15px 10px 15px !important"><i class="fa fa-paper-plane-o"></i>&nbsp;<?php echo get_lang('submit');?></button>
						                </section>
			                        </form>
			                    </div>
							</div>
							
						</div>
						


						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<div class="container-fluid">
								<div class="row">
									<?php include("parts/ads_h.php"); ?>	
								</div>
							</div>
						
						</div>
					</div>
					<br />
				</div>

				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="margin-top: 50px">
				  <div class="modal-dialog " role="document">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h4 class="modal-title" id="myModalLabel"><?php echo get_lang('information'); ?></h4>
				      </div>
				      <div class="modal-body" id="message-container">
				            <b><img src="<?php echo base_url(); ?>assets/frontend/images/loader.gif" /><?php echo get_lang('application-submission'); ?><b>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal"><?php echo get_lang('ok'); ?></button>
				      </div>
				    </div>
				  </div>
				</div>


				<script type="text/javascript">
				    $("#contact-frm").submit(function(event){
				         $('#myModal').modal('show');

				        event.preventDefault();
				        var name       		= $("#name").val();
				        var age         	= $("#age").val();
				        var phone      		= $("#phone").val();
				        var email       	= $("#email").val();
				       // var symtom       	= $("#symtom").val();
				        var weight       	= $("#weight").val();
				        var place_of_living = $("#place_of_living").val();
				        var description     = $("#description").val();

				        var sex="Male";
						if($("#female").is(':checked')){
							sex="Female";
						}
				       
				    
				        $.ajax({
				                method:"POST",
				                url: "<?php echo base_url(); ?>sumit-consultant",
				                data: {
				                     
				                    "name": name, 
				                    "sex": sex,
				                    "age": age,
				                    "email": email, 
				                    "phone": phone, 
				                   // "symtom": symtom,
				                    "weight": weight,
				                    "place_of_living": place_of_living,
				                    "description": description
				                }
				            }).done(function(respond) {
				                $("#message-container").html(respond);
				            });

				    })

				</script>

	