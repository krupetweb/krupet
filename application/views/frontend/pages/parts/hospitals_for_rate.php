								<?php if(!empty($data)){  ?>
									<?php foreach($data as $row){ ?>
										<div class="row text-left" style="border-bottom:1px solid #e5e5e5; margin-top:5px">
						          			<div class="col-xs-5 col-sm-12 col-md-3" >
						          				<a href="<?php echo base_url().$lang; ?>/view-hospital/<?php echo $row->slug; ?>">
						          					<img src="<?php echo base_url().$row->image; ?>" class="img img-responsive thumbnail" style="margin-bottom: 5px;">
						          				</a>
						          			</div>
						          			<div class="col-xs-7 col-sm-8 col-md-6">
													<a href="<?php echo base_url().$lang; ?>/view-hospital/<?php echo $row->slug; ?>">
													<span><?php echo $row->name; ?></span> &nbsp; <br class="visible-xs" />
													<?php 
														$average=0;
														if($row->total_reviewers!=0){
															$average= $row->finial_score;
														}
													?>
													
										    		<ul class="star-rate-general" >
													    		<?php if($average>=0 && $average<0.5){ ?>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
													      		<?php }else if($average>=0.5 && $average<1.5){ ?>
													      			<li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
													      		<?php }else if($average>=1.5 && $average<2.5){ ?>
													      			 <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															    <?php }else if($average>=2.5 && $average<3.5){ ?>
													      			 <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
													      		<?php }else if($average>=3.5 && $average<4.5){ ?>
													      			<li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star-empty.gif" /></li>
													      		<?php }else if($average>=4.5 && $average<=5){ ?>
													      			<li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
															       <li><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" /></li>
													      		<?php } ?>
													      	
													
															</ul>
															<br />
														<span class="doc-title"> 
															<i class="fa fa-users"></i> &nbsp; <?php echo $row->total_reviewers?> Reviewed<br />
														</span>
														<span class="doc-title"> 
															<i class="fa fa-map-marker"></i> &nbsp; <?php echo $row->distrit.', '.$row->province?>											
														</span>
													</a>
						          			</div>
						          			<div class="col-xs-12 col-sm4 col-md-3" style="margin-bottom:5px">
						          				<a class="btn btn-default search-button" style="margin-top:15px;" href="<?php echo base_url().$lang; ?>/hospital-rating/<?php echo $row->slug; ?>" ><img src="<?php echo base_url(); ?>assets/frontend/images/icon/star.gif" style="max-width:16px;"> Rate</a>
						          				
						          			</div>
						          		</div>
					          		<?php }?>
					          	<?php }else{?>
					          		<div class="row">
					          			Sorry! No hospital is found.
					          		</div>
					          	<?php }?>