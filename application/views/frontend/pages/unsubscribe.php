				<div class="container" >
					<div class="row text-center">
						<div class="col-xs-12 page-404">
							<h3>You have successfuly unsubscribed form our newsleter.</h3>
							<h5>If you do it by accident, you can subscribe again from textbox below.</h5>

						</div>
						<div class="col-xs-12 col-sm-2 col-md-4">

						</div>
						<div class="col-xs-12 col-sm-8 col-md-4">
							<div class="form-group ui-widget">
															  <div class="input-group">
															    <input type="text"  class="form-control search-control" id="subscribe" placeholder="you@example.com" value="">
															  	<span onclick="subscribe()" id="btn-sent" class="input-group-addon"><i class="fa fa-send"></i></span>
															  </div>
							</div>
						</div>
						<div class="col-xs-12 col-sm-2 col-md-4">

						</div>
					</div>
				</div>

				<style>
					.page-404 h3{
						color:#D12026;
					}
					.input-group-addon{
						cursor:pointer;
					}
				</style>
				<script>
					function subscribe(){
						email= $( "#subscribe" ).val();
						if(isEmail(email)){
							$("#btn-sent").html('<img src="<?php echo base_url(); ?>assets/frontend/images/loader-2.gif" />');
							$.ajax({
							  method: "POST",
							  url: "<?php echo base_url(); ?>submit-subscribe",
							  data: { email: email}
							})
							  .done(function( msg ) {
							    $("#btn-sent").delay(5000).html("<i class='fa fa-check'></i> Subscribed").attr("disabled", "disabled");
							    $( "#subscribe" ).attr("disabled", "disabled");
							 });
						}else{
							$("#subscribe").focus();
						}
					}

					//valide email address
					
					function isEmail(email) {
					  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
					  return regex.test(email);
					}
				</script>