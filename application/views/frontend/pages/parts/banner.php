				<?php //print_r($banner); ?>
				<div class="" style="<?php if(isset($banner)){ if(!empty($banner)){ echo "background-image: url(".base_url().$banner[0]->image.")"; }} ?> ">
					<div class="container">
						<div class="inner-page-title-wrap col-xs-12 col-md-12 col-sm-12">
							<div class="bread-heading"><h1 style="<?php if(isset($banner)){ if(empty($banner)){ echo "color: gray"; }} ?> "><?php echo $page_title ;?></h1></div>
						</div>
					 </div>
				</div>
				<br />
				