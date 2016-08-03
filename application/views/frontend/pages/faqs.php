				
				<?php include('parts/banner.php'); ?>
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
							<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				<div class="testimonial-wrap ihome-testi-wrap">
					<div class="container">
						<div class="row">
							
							<div class="col-xs-12 col-sm-9" >
									
									
									<div class="col-md-12 col-sm-12 col-lg-12 col-xs-12 faq-tabs-wrap wow fadeInUp animated animated" data-wow-delay="0.5s" data-wow-offset="200" style="visibility: visible;-webkit-animation-delay: 0.5s; -moz-animation-delay: 0.5s; animation-delay: 0.5s;">
                    
					             		 <!-- tabs left -->
						              	<div class="tabbable tabs-left">
							                <ul class="nav nav-tabs col-md-4 col-sm-4 col-xs-5">
							                  	<?php $i=0; ?>
							                  	<?php foreach($faqs as $row) { ?>
							                  		<li class="<?php if($i==0){echo "active"; $i=1; } ?>"><a href="#tab-<?php echo $row->id;?>" data-toggle="tab"><span class="faq-ques"><?php echo $row->question; ?></span><i class="right-arr"></i></a></li>
							                 	<?php }?>
							                </ul>
							                
							                <div class="tab-content col-md-8 col-sm-8 col-xs-7 pull-right">
							                <?php foreach($faqs as $row) { ?>
								                 <div class="tab-pane <?php if($i==1){echo "active"; $i=0; } ?>" id="tab-<?php echo $row->id;?>">
								                    <div class="dept-title-tabs"><?php echo $row->question; ?></div>
								                    <div>
								                    	<br />
								                    	<?php echo $row->answer?>
								                    </div>
								                 </div>
							                <?php } ?>
							                </div>
						                
						                </div>
					        	
					           		</div>
									
										
										
										
															
									
							</div>

							
							
							<div class="col-xs-12 col-sm-3">
								
								<div class="container-fluid">
									<div class="row">
									<!--:::::::::::::::::::::::::::::::::::::: Aside-->
									<?php include("parts/ads_h.php"); ?>
									</div>
								</div>
							
							</div>
						</div>
						<br />
						 
					</div>
					<br />
				</div>