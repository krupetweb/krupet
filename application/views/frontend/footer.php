<link rel="stylesheet" href="<?=$src_url?>assets/frontend/css/my-footer.css">

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

				<div class="col-xs-12 col-sm-12 col-sm-3 col-md-3 col-lg-3">

					<p class="footer-title">Like us in social</p>
					<div class="fb-like" data-href="https://www.facebook.com/Krupetcom-137344823272389/" data-layout="standard" data-action="like" data-size="small" data-show-faces="false" data-share="true"></div>
					<p class="footer-title mg-top-5">Visitor counter</p>
					<div align="" style="margin-top: -1px">
						<a href="http://www.amazingcounters.com">
							<img border="0" src="http://cc.amazingcounters.com/counter.php?i=3205533&c=9616912" alt="AmazingCounters.com">
						</a>
					</div>
				</div>


				<div class="col-xs-12 col-sm-12 col-sm-3 col-md-3 col-lg-3">
					<p class="footer-title">Medical resource</p>
					<div class="row">
						<a href="http://www.medscape.com/" target="_blank">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><div class="medical-logo"><img width="80px" height="30px" src="<?=$src_url?>assets/frontend/images/m_logo/Medscape.png"></div></div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 md-text-footer">Medscape</div>
						</a>
					</div>
					<div class="row">
						<a href="http://www.ncbi.nlm.nih.gov/pubmed" target="_blank">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><div class="medical-logo"><img width="80px" height="30px" src="<?=$src_url?>assets/frontend/images/m_logo/PubMed.png"></div></div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 md-text-footer">Pubmed</div>
						</a>
					</div>
					<div class="row">
						<a href="http://www.uptodate.com/" target="_blank">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><div class="medical-logo"><img width="80px" height="30px" src="<?=$src_url?>assets/frontend/images/m_logo/UptoDate.png"></div></div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 md-text-footer">Uptodate</div>
						</a>
					</div>
					<div class="row">
						<a href="http://www.who.int/hinari/en/" target="_blank">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><div class="medical-logo"><img width="80px" height="30px" src="<?=$src_url?>assets/frontend/images/m_logo/Hinari.png"></div></div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 md-text-footer">Hinari</div>
						</a>
					</div>
					<div class="row">
						<a href="http://www.cochrane.org/" target="_blank">
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"><div class="medical-logo"><img width="80px" height="30px" src="<?=$src_url?>assets/frontend/images/m_logo/Cochrane.png"></div></div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 md-text-footer">Cochrane</div>
						</a>
					</div>
				</div>


				<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
							<p class="footer-title">Information</p>
							<ul class="menu-footer">
								<li><a href="#">Terms and Conditions</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Press</a></li>
							</ul>
				</div>

				<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
							<p class="footer-title">Subscribe For Special Update</p>
								<form id="subscribe_form" action="">
									<input id="subscribe-email" type="email" required class="news-tb" placeholder="Email Address" />
									<button id="btn-subscription" type="submit" class="news-button"><i class="fa fa-send"></i>&nbsp; <?php echo get_lang('subscribe');?></button><br />
								</form>

							<div class="clear mb-30"></div>

							<p class="footer-title">Want to ask a question?</p>
							<p class="footer-phone-number">(+855) 17 567 099</p>
							<p class="footer-email">EMAIL US AT <a href="#">support@krupet.com</a></p>

				</div>



			</div>

		</div>

			<div class="bb mt-40"></div>
			<div class="mb-40"></div>
			<div class="social-footer clearfix">
				<a target="_blank" href="https://www.facebook.com/Krupetcom-137344823272389/"><i class="fa fa-facebook-official"></i></a>
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

						<!--								<li><a href="--><?php //echo base_url();?><!----><?php //echo $lang; ?><!--/faqs">--><?php //echo get_lang('faq');?><!--</a></li>-->
						<!--								<li><a href="--><?php //echo base_url();?><!----><?php //echo $lang; ?><!--/term">--><?php //echo get_lang('term');?><!--</a></li>-->
						<li><a href="<?php echo base_url();?><?php echo $lang; ?>/career"><?php echo get_lang('career');?></a></li>
						<li><a href="<?php echo base_url();?><?php echo $lang; ?>/about-us"><?php echo get_lang('about-us');?></a></li>
						<li><a href="<?php echo base_url();?><?php echo $lang; ?>/contact-us"><?php echo get_lang('contact-us');?></a></li>
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