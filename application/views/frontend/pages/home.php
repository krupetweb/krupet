
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.carousel.css">
				<script type="text/javascript" src="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.carousel.min.js"></script>
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/flexslider.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/jquery-ui.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/style.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/colors.css">
				<script type="text/javascript" src="<?=$src_url?>assets/frontend/banner-plugin/jquery-ui.min.js"></script>
				<script type="text/javascript" src="<?=$src_url?>assets/frontend/banner-plugin/range-slider.js"></script>

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
					</div>

				</div>
				<div class="container pd-right-0">
					<div class="col-xs-12">
						<section class="nopadding clearfix text-center">
							<h2 class="color-red border-red"><?php echo get_lang('specialization'); ?></h2>
							<div class="col-sm-12 text-center">
								<ul class="spe-list">
									<li>
										<a href="">
											<img src="<?=$src_url?>assets/frontend/images/icon/news.png" style="width:40px;" >
											<p>Dentist</p>
										</a>
									</li>
									<li>
										<a href="">
											<img src="<?=$src_url?>assets/frontend/images/icon/news.png" style="width:40px;" >
											<p>Dentist</p>
										</a>
									</li>
									<li>
										<a href="">
											<img src="<?=$src_url?>assets/frontend/images/icon/news.png" style="width:40px;" >
											<p>Dentist</p>
										</a>
									</li>
									<li>
										<a href="">
											<img src="<?=$src_url?>assets/frontend/images/icon/news.png" style="width:40px;" >
											<p>Dentist</p>
										</a>
									</li>
									<li>
										<a href="">
											<img src="<?=$src_url?>assets/frontend/images/icon/news.png" style="width:40px;" >
											<p>Dentist</p>
										</a>
									</li>
								</ul>
							</div>
						</section>
					</div>
				</div>
				
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Hotline << ?>
				<?php include('parts/hotline.php') ?>
				
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Partner << ?>
				<div class="container pd-right-0">
					<div class="col-xs-12">
						<section class="nopadding clearfix">
							<h2 class="color-red border-red"><?php echo get_lang('tips');?></h2>
							<div class="col-sm-8">
								<div id="search_result_container" class="container-fluid">
									<?php if(!empty($data)){?>
										<?php foreach($data as $row) { ?>
											<div class="row">

												<div class="col-xs-12 col-sm-12 col-md-5" >
													<div class="zoom-wrap">
													  <div class="zoom-icon"></div>
														<a  href="<?php echo base_url();?><?php echo $lang;?>/blogs/<?php echo $row->slug; ?>">
															<img alt="" data-src=" <?php echo base_url()?><?php echo $row->image ?> " src=" " class="img-responsive">
														</a>
													</div>
												</div>
												<div class="col-xs-12 col-sm-12 col-md-7" >
													<div class="text-left">
														<div class="blogs-box-title blogs-box-title-news">
															<a  href="<?php echo base_url();?><?php echo $lang;?>/blog-detail/<?php echo $row->slug; ?>">
																<?php echo $row->title ?>
															</a>
														</div>
														<span  class="post-date"><b><i class="fa fa-calendar"></i>:  <?php echo date_format1($row->created_dt) ?> </b></span>
														<p >
															<?php echo $row->pre_content ?>
														</p>

														<a style="float:right"  href="<?php echo base_url();?><?php echo $lang;?>/blog-detail/<?php echo $row->slug; ?>"><?php echo get_lang('read more');?> &gt;&gt;</a>
													</div>
												</div>

											</div>
											<hr />
										<?php } ?>
									<?php }else echo ' <h3>'.get_lang('blog-caption').'</h3>'; ?>
								</div>
							</div>
						</section>
					</div>
				</div>

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




