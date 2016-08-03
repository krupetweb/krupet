			<?php if(isset($ads_v) && !empty($ads_v)){ ?>	
				
				<div class="container text-center">
					<a href="<?php echo $ads_v['link']; ?>" target="_blank">
					<img src="<?php echo base_url().$ads_v['image']; ?>" class="img img-responsive " style="width: 98%;
    padding-left: 10px;" />
					</a>
				</div>
				<br />
			<?php } ?>
								