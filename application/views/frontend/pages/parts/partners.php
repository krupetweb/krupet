				
<style>
   .owl-item a img{
	margin:auto !important;
   }
</style>

	<?php if(!empty($potential_partners)){ ?>
	<div class="container">
 		<section class="nopadding clearfix">
		<br />
		<div class="breadcrumb_bottom">
			<div class="container">
				<div class="row">
					<div class="breadcrumb_nav">
						<div class="col-sm-12 text-center" >
							<h2><u><?php echo get_lang('p-partner'); ?></u></h2>
						</div>
						
					</div>
				</div>
			</div>
		</div>
        <?php if(sizeof($potential_partners)==1){ ?>
		    <div class="text-center">
					    <a href="<?php echo $potential_partners[0]->url?>"><img data-src="<?php echo base_url()?><?php echo $potential_partners[0]->image?>" src="" style="margin:auto" alt="" class="img-responsive"/></a>
		    </div>
		<?php }else if(sizeof($potential_partners)==2){ ?>
            <div class="container">
				<div class="row">
					<div class="col-xs-6">
						 <a href="<?php echo $potential_partners[0]->url?>"><img data-src="<?php echo base_url()?><?php echo $potential_partners[0]->image?>" src="" style="margin:auto" alt="" class="img-responsive"/></a>
					</div>
					<div class="col-xs-6">
						 <a href="<?php echo $potential_partners[1]->url?>"><img data-src="<?php echo base_url()?><?php echo $potential_partners[1]->image?>" src="" style="margin:auto" alt="" class="img-responsive"/></a>
					</div>
				</div>
			</div>
		<?php }else{ ?>
            <div id="sponsor-carousel" >
			    <?php foreach ($potential_partners as $row) { ?>
				    <div class="owl-item">
					    <a href="<?php echo $row->url?>"><img data-src="<?php echo base_url()?><?php echo $row->image?>" src="" alt="" class="img-responsive"/></a>
				    </div>
			    <?php } ?>
		    </div> 
		<?php } ?>
	</section><!-- end section -->
</div>


<?php }?>
			
<script>
	$(document).ready(function(){
			var sponsor = $('#sponsor-carousel');
		
		sponsor.owlCarousel({
			 autoPlay: 5000, //Set AutoPlay to 3 seconds

		      items : 2,
		      itemsDesktop : [1199,3],
		      itemsDesktopSmall : [979,2]
		});	
	})

</script>