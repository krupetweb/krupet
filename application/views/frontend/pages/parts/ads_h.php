				
				<div class="container-fluid">
									<div class="row">
										<?php if(isset($ads_h)){ ?>
										<?php foreach($ads_h as $row){?>
												<?php if($row['type']==1 OR $row['type']==2 ){ ?>
													<div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
														<div class="zoom-wrap">
														  <div class="zoom-icon"></div>
															<img alt="" class="img-responsive" data-src="<?php echo base_url().$row['image']; ?>" src="" />
														</div>
														<div class="doc-name">
															<a href="<?php echo $row['link'];?>">
																<div class="doc-name-class">
																	<?php echo $row['name'];?>
																</div>
																<span class="doc-title"> 
																	 <?php echo $row['caption']; ?>
																</span>
															</a>
															<br />
														</div>
													</div>
												<?php }else{ ?>
													<div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12">
														<div class="zoom-wrap">
															<a href="#" >
															  	<div class="zoom-icon"></div>
																<img alt="" class="img-responsive" data-src="<?php echo base_url().$row['image']; ?>" src="" />
															</a>
														</div>
														
													</div>
												<?php } ?>
										<?php } ?>
										<?php } ?>	
									</div>
					</div>
							