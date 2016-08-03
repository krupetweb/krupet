				<?php include('parts/banner.php'); ?>
				
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
							<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
						</div>
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<article>
								<?php 
									echo $data[0]->content; 
								?> 
							</article>
						</div>
						
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<div class="container-fluid">
								<div class="row">
									<?php include("parts/ads_h.php"); ?>
								</div>
							</div>
						</div>
					</div>
				</div>
					
