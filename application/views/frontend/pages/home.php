
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.carousel.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.theme.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.transitions.css">
				<script type="text/javascript" src="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.carousel.min.js"></script>
				
				<?php include('parts/ads_v.php'); ?>
				
				 <br />
				<div class="container">
					<div class="row ">

						<div class="col-xs-12">

							<div id="owl-programs" style="margin-bottom:10px" class="owl-carousel owl-theme">
								<?php foreach($programes as $row){ ?>

									<div class="owl-item" class="border_slide">
										<a href="<?php echo $row->url?>"><img alt="" class="img-responsive" data-src="<?=$src_url?><?php echo $row->image?>" src="" /></a>

									</div>

								<?php }?>

							</div>
						
						</div>

						<!--
						<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4" style="   padding-right: 0px; padding-left: 0px;">
							<a href="<?=$lang_url?>health-consultant">
								<div class="container-fluid visible-xs">
								<img src="" data-src="<?=$src_url.$consultant_image[0]->image; ?>" style=" width:100%; height:100%"/>
						        </div>
								<img src="" data-src="<?=$src_url.$consultant_image[0]->image; ?>" class="hiden-xs visible-sm visible-md visible-lg" style=" width:100%; height:100%"/>
							</a>
						</div>
						-->

					</div>

				</div>
				
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Hospitals << ?>
				<div class="container">
					<section class="nopadding clearfix">
						<br />
						<div class="breadcrumb_bottom">
								<div class="container">
									<div class="row">
										<div class="breadcrumb_nav">
											<div class="col-sm-12">
												<h2><img src="<?=$src_url?>assets/frontend/images/icon/hospitals.png" style="width:40px;" > &nbsp; <?php echo get_lang('news hospitals');?></h2>
											</div>
											
										</div>
									</div>
								</div>
						</div>
						<div id="featured-hospital" class="container">
							<?php if(isset($hospitals) && !empty($hospitals)){;// print_r($featured_hospitals) ?>	
							<div class="row new-born">
								<?php foreach($hospitals as $row ){ ?>
									<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
										<br />
										<div class="zoom-wrap">
											<img alt="" class="img-responsive" src="<?=$src_url?><?php echo $row->image?>"  />
										</div>
										<div class="doc-name">
											<a href="<?=$lang_url?>hospitals/<?php echo $row->slug; ?>">
												<div class="doc-name-class">
													<?php echo $row->name; ?>
												</div>
												<span class="doc-title"> 
													<i class="fa fa-map-marker"></i> &nbsp; <?php echo $row->distrit.', '.$row->province?>
												</span>
											</a>
											<br />
										</div>
								
									</div>
								<?php } ?>
							</div>
							<div class="row">
								<div class="col-xs-12 text-center">
									<br>
									<a id="more-hospitals" href="<?=$lang_url?>hospitals" class="btn btn-default">More</a>
								</div>
						</div>
						<?php }?>
						</div><!-- end container -->
						
					</section><!-- end section -->
				</div>

                <?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Feedback << ?>
                <div class="container">	
					<div class="container">
						<section class="nopadding clearfix">
							<br />
							<div class=" purchase-wrap-blue ipurchase-wrap">
				                        <div class="purchase-strip-blue pull-right col-sm-12 col-md-12 col-xs-12 pull-left notViewed wow fadeInUp animated" data-wow-delay="0.5s" data-wow-offset="150" style="visibility: visible;-webkit-animation-delay: 0.5s; -moz-animation-delay: 0.5s; animation-delay: 0.5s;">
				                        	<div class="purchase-strip-text"><?php echo get_lang('need-your-feedback'); ?></div>
					                        <div class="color-4">
					                            <p class="ipurchase-paragraph">
					                                <a href="<?=$lang_url?>feedback" class=" btn btn-4 btn-4a notViewed wow fadeInUp animated" data-wow-delay="0.5s" data-wow-offset="150" style="visibility: visible;-webkit-animation-delay: 0.5s; -moz-animation-delay: 0.5s; animation-delay: 0.5s;"><i class="fa fa-check"></i> &nbsp; <?php echo get_lang('give-feedback'); ?></a>
					                            </p>
					                        </div>
				                        </div>
			                     	 
			                </div> 

						</section>
					</div>
				</div>
				
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Doctors << ?>
				<div class="container" >
					<section class="nopadding clearfix">
						<br />
						<div class="breadcrumb_bottom">
								<div class="container">
									<div class="row">
										<div class="breadcrumb_nav">
											<div class="col-sm-12">
												<h2><img src="<?=$src_url?>assets/frontend/images/icon/doctors.png" style="width:40px;" > &nbsp; <?php echo get_lang('new doctor');?></h2>
											</div>
										</div>
									</div>
								</div>
						</div>

						<div id="featured-doctor" class="container">
							<?php if(isset($doctors) && !empty($doctors)){ ?>	
								<div class="row">
								<?php foreach($doctors as $row) {?> 
									<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
										<br />
										<div>
											<img alt="" class="img-responsive" src="<?=$src_url?><?php echo $row->image?>" />
										</div>
										<div class="doc-name">
											<a href="<?=$lang_url?>doctors/<?php echo $row->slug; ?>">
												<div class="doc-name-class">
													<?php echo $row->name?>
												</div>
												<span class="doc-title"> 
													<i class="fa fa-stethoscope"></i> &nbsp; <?php echo $row->specialists_name?>
												</span>
											</a>
											<br />
										</div>
									</div>
								
								<?php } ?>
							</div>
							<div class="row">
								<div class="col-xs-12 text-center">
									<br>
									<a id="more-hospitals" href="<?=$lang_url?>/doctors" class="btn btn-default">More</a>
								</div>
						</div>
							<?php }?>
						</div>
						
						

					</section><!-- end section -->
				</div>

				
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Hotline << ?>
				<?php include('parts/hotline.php') ?>
				
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Partner << ?>
				<?php if(isset($featured_blogs) && !empty($featured_blogs)){ ?>	
					<div class="container">
						     <div class="breadcrumb_bottom" style="margin-top:5px;">
									<div class="container">
										<div class="row">
											<div class="breadcrumb_nav ">
												<div class="col-sm-12">
													<h2><img src="<?=$src_url?>assets/frontend/images/icon/news.png" style="width:40px;" > &nbsp; <?php echo get_lang('latest news');?></h2>
												</div>
												
											</div>
										</div>
									</div>
								</div>
						 
								<div class="latest-post-wrap pull-left wow fadeInLeft" data-wow-delay="0.5s" data-wow-offset="100">
									<!--<div class="subtitle col-xs-12 no-pad col-sm-11 col-md-12 pull-left news-sub">latest news</div>-->
									<?php foreach($featured_blogs as $row) { ?>
										<!--Post item-->
										<div class=" col-xs-12 col-sm-6 col-md-4 col-lg-3">
											<div class="blog-box wow fadeInLeft animated" data-wow-delay="0.5s" data-wow-offset="150" style="visibility: visible;-webkit-animation-delay: 0.5s; -moz-animation-delay: 0.5s; animation-delay: 0.5s;">
												<img alt="" data-src="<?=$src_url?><?php echo $row->image?>" src="" class="img-responsive">
												<div class="blog-box-title box-title news-home"><?php echo $row->title?></div>
												
												<div class="post-meta"> 
												
												<span class="post-date"><i class="fa fa-calendar"></i> <?php echo date_format1($row->modified_dt); ?> </span>
												<a href="<?php echo base_url();?><?php echo $lang;?>/blog-detail/<?php echo $row->slug; ?>">Read More &gt;</a>
												</div>
											</div>
										</div>
									<?php } ?>
									
									 
									
								</div>
							<!--
							 <a href="<?=$lang_url?>tips/1" class="dept-details-butt pull-right posts-showall"><?php echo get_lang('show all');?></a>
							-->
					</div>
				<?php }?>

				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Partner << ?>
				<?php include("parts/partners.php"); ?>

				<script type="text/javascript">
					$( document ).ready(function() {
					 	//alert('yest')
					 	$('.owl-fullwidth').owlCarousel({
				            loop:true,
				            margin:10,
				            nav:true,
				            dots:false,
				            responsive:{
				                0:{
				                    items:1
				                },
				                600:{
				                    items:2
				                },
				                1000:{
				                    items:4
				                }
				            }
				        });
						
					});	

					$( document ).ready(function() {
								$('#owl-programs').owlCarousel({
										navigation : false, // Show next and prev buttons
									  slideSpeed : 300,
									  paginationSpeed : 400,
									  singleItem:true
						        });
							
						});	
				</script>


				
			
			
					 
