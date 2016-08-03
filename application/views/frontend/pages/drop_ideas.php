
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

				</style>
				<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/frontend/css/rating.css" id="style-switch" />
				<div class="bread-crumb-wrap ibc-wrap-1" style=" <?php if(isset($banner)){ if(!empty($banner)){ echo "background-image: url(".base_url().$banner[0]->image.")"; }} ?> ">
					<div class="container">
						<div class="inner-page-title-wrap col-xs-12 col-md-12 col-sm-12">
							<div class="bread-heading"><h1>Health Consultant</h1></div>
						</div>
					 </div>
				</div>
				<br />
				
				<div class="container">
					<div class="row">
						<form id="contact-frm" class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div>
								<h4>Complete Information</h4>
								<div class="form-horizontal">
									<div class="form-group">
									    <label  class="col-sm-3 control-label">Your Name</label>
									    <div class="col-sm-9">
									     	<input id="name" type="text"   class="form-control this-form" required />	
										</div>
								    </div>
								  	<div class="form-group">
									    <label  class="col-sm-3 control-label">Sex</label>
									    <div class="col-sm-9">
									      <select id="sex" class="form-control this-form" >
									      	<option value="M">Male</option>
									      	<option value="F">Female</option>
									      </select>
									      </div>
								    </div>
								    <div class="form-group">
									    <label  class="col-sm-3 control-label">Age</label>
									    <div class="col-sm-9">
									     	<input id="age" type="text"   class="form-control this-form" required />
									     </div>
								    </div>
								    <div class="form-group">
									    <label  class="col-sm-3 control-label">Email</label>
									    <div class="col-sm-9">
									     	<input id="email" type="email"   class="form-control this-form" required />
									     </div>
								    </div>
								    <div class="form-group">
									    <label  class="col-sm-3 control-label">Phone</label>
									    <div class="col-sm-9">
									     	<input id="phone" type="text"   class="form-control this-form" required />
									    </div>
								    </div>
								      <div class="form-group">
									    <label  class="col-sm-3 control-label">Description</label>
									    <div class="col-sm-9">
									     	<textarea id="comment" class="form-control this-form" style="color:black;" placeholder="Tell your symtom..." style="min-height:200px;"></textarea>
									    </div>
									  </div>
									  <div>
									    <div class="form-group">
									    	<label  class="col-sm-3 control-label"></label>
									    	<div class="col-sm-9">
												<button type="submit" value="Send" class="btn btn-default" >Submit</button>
											</div>
										</div>
								    </div>
								</div>
							</form>
							
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
				       
				        <h4 class="modal-title" id="myModalLabel">Information</h4>
				      </div>
				      <div class="modal-body" id="message-container">
				            <b><img src="<?php echo base_url(); ?>assets/frontend/images/loader.gif" />Your application request is being process! Please be patient.<b>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-primary" data-dismiss="modal">OK</button>
				      </div>
				    </div>
				  </div>
				</div>


				<script type="text/javascript">
				    $("#contact-frm").submit(function(event){
				         $('#myModal').modal('show');

				        event.preventDefault();
				        var name        = $("#name").val();
				        var sex       	= $("#sex").val();
				        var age         = $("#age").val();
				        var phone       = $("#phone").val();
				        var email       = $("#email").val();
				        var comment     = $("#comment").val();
				       
				    
				        $.ajax({
				                method:"POST",
				                url: "<?php echo base_url(); ?>/sumit-idea",
				                data: {
				                     
				                    "name": name, 
				                    "sex": sex,
				                    "age": age,
				                    "email": email, 
				                    "phone": phone, 
				                    "comment": comment
				                }
				            }).done(function(respond) {
				                $("#message-container").html(respond);
				            });

				    })

				</script>

	