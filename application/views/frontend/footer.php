<link rel="stylesheet" href="<?=$src_url?>assets/frontend/css/footer.css">

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

<!--new footer-->

<div class="footer-wrapper scrollspy-footer">

	<footer class="main-footer">

		<div class="container">

			<div class="row">

				<div class="col-xs-12 col-sm-12 col-sm-4 col-md-4 mb-30-xs">

					<h4 class="footer-title">Like us in social</h4>
					<div class="fb-like" data-href="https://developers.facebook.com/docs/plugins/" data-layout="standard" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>

				</div>


				<div class="col-xs-12 col-sm-12 col-md-4">
							<h4 class="footer-title">More information</h4>
							<ul class="menu-footer">

								<li><a href="<?php echo base_url();?><?php echo $lang; ?>/faqs"><?php echo get_lang('faq');?></a></li>
								<li><a href="<?php echo base_url();?><?php echo $lang; ?>/term"><?php echo get_lang('term');?></a></li>
								<li><a href="<?php echo base_url();?><?php echo $lang; ?>/about-us"><?php echo get_lang('about-us');?></a></li>
								<li><a href="<?php echo base_url();?><?php echo $lang; ?>/career"><?php echo get_lang('career');?></a></li>
								<li><a href="<?php echo base_url();?><?php echo $lang; ?>/contact-us"><?php echo get_lang('contact-us');?></a></li>
							</ul>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-4 mt-30-sm">
							<h4 class="footer-title">Subscribe For Special Update</h4>
								<form id="subscribe_form" action="">
									<input id="subscribe-email" type="email" required class="news-tb" placeholder="Email Address" />
									<button id="btn-subscription" type="submit" class="news-button"><i class="fa fa-send"></i>&nbsp; <?php echo get_lang('subscribe');?></button><br />
								</form>

							<div class="clear mb-30"></div>

							<h5 class="footer-title">Want to ask a question?</h5>
							<p class="footer-phone-number">+855(010)222 150</p>
							<p class="footer-email uppercase">email us at <a href="#">support@krupet.com</a></p>

				</div>





			</div>

			<div class="bb mt-40"></div>
			<div class="mb-40"></div>
			<div class="social-footer clearfix">
				<a href="#"><i class="fa fa-facebook-official"></i></a>
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-google-plus "></i></a>
				<a href="#"><i class="fa fa-linkedin "></i></a>
			</div>

		</div>

	</footer>

	<footer class="secondary-footer">

		<div class="container">

			<div class="row">

				<div class="col-sm-6">
					<p class="copy-right">&#169; Copyright 2015 KRUPET</p>
				</div>

				<div class="col-sm-6">
					<ul class="secondary-footer-menu clearfix">
						<li><a href="#">My Account</a></li>
						<li><a href="#">Sign-in</a></li>
						<li><a href="#">Sign-up</a></li>
					</ul>
				</div>

			</div>

		</div>

	</footer>

</div>
<!--end-->
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


<script>(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id)) return;
		js = d.createElement(s); js.id = id;
		js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=266170847072062";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>