<!---->
<!--				<link rel="stylesheet" href="--><?//=$src_url?><!--assets/frontend/plugin/owl-carousel/owl.carousel.css">-->
<!--				<link rel="stylesheet" href="--><?//=$src_url?><!--assets/frontend/plugin/owl-carousel/owl.theme.css">-->
<!--				<link rel="stylesheet" href="--><?//=$src_url?><!--assets/frontend/plugin/owl-carousel/owl.transitions.css">-->
<!--				<script type="text/javascript" src="--><?//=$src_url?><!--assets/frontend/plugin/owl-carousel/owl.carousel.min.js"></script>-->


				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/flexslider.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/jquery-ui.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/style.css">
				<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/colors.css">
				<script type="text/javascript" src="<?=$src_url?>assets/frontend/banner-plugin/jquery-ui.min.js"></script>
				<script type="text/javascript" src="<?=$src_url?>assets/frontend/banner-plugin/range-slider.js"></script>


				<?php include('parts/ads_v.php'); ?>
				
				 <br />
<!--				//new banner-->
				<div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
					<!-- Wrapper for slides -->
					<div class="carousel-inner">
						<?php foreach($programes as $key => $row){ ?>

							<div class="item <?php echo $key == 0?'active':''?>">

								<div class="description">
									<div class="container">
										<div class="row">
											<div class="col-xs-12">
												<h1><em>reserve a room for</em><br class="hidden-xs"> <span>family vacation</span></h1>
											</div>
										</div>
									</div>
								</div>
								<img src="<?=$src_url?><?php echo $row->image?>" alt="image description">
							</div>

						<?php }?>

					</div>
					<!-- Controls -->
					<a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev"></a>
					<a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next"></a>
				</div>
				<!-- reservation-bar -->
				<div class="reservation-bar">
					<div class="container">
						<div class="row">
							<form action="#">
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-sm-6">
											<div class="input-append date" id="dpd1" data-date="Check In" data-date-format="dd-mm-yyyy">
												<input class="form-control" size="16" type="text" value="Arrive date">
												<span class="icon-calendar"></span>
											</div>
										</div>
										<div class="col-sm-6">
											<div class="input-append date" id="dpd2" data-date="Check Out" data-date-format="dd-mm-yyyy">
												<input class="form-control" size="16" type="text" value="Departure date">
												<span class="icon-calendar"></span>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-sm-4">
											<div class="form-group">
												<div class="fake-select">
													<select>
														<option value="Adult" selected>Adult</option>
														<option>Children</option>
														<option>Option3</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="form-group">
												<div class="fake-select">
													<select>
														<option value="Room" selected>Room</option>
														<option>Option2</option>
														<option>Option3</option>
													</select>
												</div>
											</div>
										</div>
										<div class="col-sm-4">
											<input type="submit" class="btn btn-default" value="check availability">
										</div>
									</div>
								</div>
							</form>

						</div>
					</div>
				</div>


<!--				end-->
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
									<?php }else echo ' <h3>'.get_lang('blog-caption').'</h3>'; }?>
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


				
			
			
					 
