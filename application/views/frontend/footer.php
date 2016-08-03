
				<footer id="footer">
					<div class="container">
						<div class="row">
							
							<!--Foot widget-->
							<div class="col-xs-12 col-sm-6 col-md-6 foot-widget">
								<div class="foot-widget-title"><?php echo get_lang('newsletter');?></div>
								<p><?php echo get_lang('if you wish to recive news update from our team, please subscribe');?></p>
								<div class="news-subscribe">
									<form id="subscribe_form" action="">
										<input id="subscribe-email" type="email" required class="news-tb" placeholder="Email Address" />
										<button id="btn-subscription" type="submit" class="news-button"><i class="fa fa-send"></i>&nbsp; <?php echo get_lang('subscribe');?></button><br />
									</form>

								</div>
								
								
							</div>
							
								<!--Foot widget-->
							<div class="col-xs-12 col-sm-6 col-md-3 foot-widget">
								
								<div class="foot-widget-title"> &nbsp;&nbsp;&nbsp;&nbsp; <?php echo get_lang('social media');?></div>
								<div class="social-wrap">
									<ul>
										<li><a href="#"><i class="fa fa-facebook foot-social-icon" id="face-foot" data-toggle="tooltip" data-placement="bottom" title="Facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter foot-social-icon" id="tweet-foot" data-toggle="tooltip" data-placement="bottom" title="Twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin foot-social-icon" id="link-foot" data-toggle="tooltip" data-placement="bottom" title="Linked in"></i></a></li>
									</ul>
								</div>
							</div>
							<div class="col-xs-12 col-sm-6 col-md-3 foot-widget">
								
								<div class="foot-widget-title"> &nbsp; <?php echo get_lang('facebook-like');?></div>
								<div class="social-wrap">
									<ul>
										<li>
											<div class="fb-like" data-href="https://www.facebook.com/Krupetcom-137344823272389/" data-layout="button" data-action="like" data-show-faces="true" data-share="false">
												
											</div>

										</li>
									</ul>
									
								</div>
							</div>
							
						</div>
					 </div>       
					 
				</footer>
				
				<div class="bottom-footer">
					<div class="container">
					
						<div class="row">
							<!--Foot widget-->
							<div class="col-xs-12 col-sm-12 col-md-12 foot-widget-bottom">
								<p class="col-xs-12 col-md-7 no-pad" style='font-size:14px;'><?php echo get_lang('copyright 2015 krupet.com | all rights reserved');?> </p>
								<ul class="foot-menu col-xs-12 col-md-5 no-pad">  
									<li><a href="#"></a></li>
									<li><a href="<?php echo base_url();?><?php echo $lang; ?>/faqs"><?php echo get_lang('faq');?></a></li>    
									  
									<li><a href="<?php echo base_url();?><?php echo $lang; ?>/term"><?php echo get_lang('term');?></a></li> 
									<li><a href="<?php echo base_url();?><?php echo $lang; ?>/about-us"><?php echo get_lang('about-us');?></a></li> 
									<li><a href="<?php echo base_url();?><?php echo $lang; ?>/career"><?php echo get_lang('career');?></a></li>  
									<li><a href="<?php echo base_url();?><?php echo $lang; ?>/contact-us"><?php echo get_lang('contact-us');?></a></li>
								</ul>
							</div>
						</div>
					</div> 
				</div>

				<div class="modal fade" id="subscript" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content" style="margin-top: 150px;">
				      <div class="modal-header">
				        <button type="button" onclick="hide_modal()" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel">Information</h4>
				      </div>
				      <div class="modal-body" >
				        	<h4 id="modal-body-subscript">
				        		<img src="<?php echo base_url(); ?>assets/frontend/images/loader.gif" style="width:50px" />  Wating respond....
				        	</h4>
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="hide_modal()">OK</button>
				      </div>
				    </div>
				  </div>
				</div>
				

<script type="text/javascript">
	$( "#subscribe_form" ).submit(function( event ) {
	 	$("#btn-subscription").html('<img src="<?php echo base_url(); ?>assets/frontend/images/loader-2.gif" />');
		$.ajax({
		  method: "POST",
		  url: "<?php echo base_url(); ?>submit-subscribe",
		  data: { email: $( "#subscribe-email" ).val() }
		})
		  .done(function( msg ) {
		    $("#btn-subscription").delay(5000).html("<i class='fa fa-check'></i> Subscribed").attr("disabled", "disabled");
		    $( "#subscribe-email" ).attr("disabled", "disabled");
		  });
	

	  event.preventDefault();
	});
</script>	
<script>
	function init() {
	var imgDefer = document.getElementsByTagName('img');
	for (var i=0; i<imgDefer.length; i++) {
	if(imgDefer[i].getAttribute('data-src')) {
	imgDefer[i].setAttribute('src',imgDefer[i].getAttribute('data-src'));
	} } }
	window.onload = init;
</script>

