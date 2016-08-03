				<?php 
										$where_to_go="";
										$the_page="";
										$page_title="";
										$where_to_go="blog";
										$page_title=get_lang('blog-detail');
						?>
						<?php
						    $cat=  $data[0]->slug; 
						    //echo $data[0]->slug;die; 
						?>
				<div class="" style="<?php if(isset($banner)){ if(!empty($banner)){ echo "background-image: url(".base_url().$banner[0]->image.")"; }} ?> ">
					<div class="container">
						<div class="inner-page-title-wrap col-xs-12 col-md-12 col-sm-12">
							<div class="bread-heading"><h1 style="<?php if(isset($banner)){ if(empty($banner)){ echo "color: gray"; }} ?> "><?php if($cat=='video') {echo get_lang('video-detail'); }elseif($cat=='tips'){echo  get_lang('tip-detail'); ;}else{echo get_lang('news-detail');} ?></h1></div>
						</div>
					 </div>
				</div>
				<br />
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				<div class="container">
					<div class="row">
							<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
								<div id="blog-single-image-post">
									<div class="col-lg-12 no-pad">
										<div class="blog-box-title">
											<h2><?php echo $data[0]->title ?> </h2>
										</div>
										
										<span class="post-date"><i class="fa fa-calendar"></i>: <?php echo date_format1($data[0]->modified_dt) ?> </span>
										<hr />
										<article>
										<?php echo $data[0]->main_content ?> 
										</article>
										<div class="fb-comments" data-href="<?php echo base_url().$lang.'/'.$detail_page.'/'.$id.'/'.$title;?>" data-width="100%" data-numposts="5"></div>
									
									</div>
								</div>
							</div>
						
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<div class="container-fluid">
								<div class="row">
									
									<div class="row">
									<!--:::::::::::::::::::::::::::::::::::::: Aside-->
									<?php include("parts/ads_h.php"); ?>
									</div>
											
										
											
								</div>
							</div>
						</div>
					</div>
				</div>
					
