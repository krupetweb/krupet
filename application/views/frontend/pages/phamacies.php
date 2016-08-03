
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				<div id="search-panel-container" style=" <?php if(isset($banner)){ if(!empty($banner)){ echo "background-image: url(".base_url().$banner[0]->image.")"; }} ?> ">    
							<div id="into" class="container text-right" >
								<span><?php echo get_lang('pharmacies_can_be_searched');?>.</span>
							</div>
							<div id="search-panel" class="container" >
								<div class="row" style="padding:10px;">
									<div class="col-xs-12 ">
										<h4 class="heading">
										<?php 
											echo get_lang('pharmacy');
											
										?>
										</h4>
									</div>
									
									<div class="col-xs-12 col-sm-6 col-md-3 no-padding first-control-container" style="">
										<select id="province" class="form-control search-control">
											<?php
												$province	=isset($_GET['province']) ? $_GET['province'] : "";
												$default 	='<option value="">'.get_lang('select-province').'</option>';
												$first 		='';
												$other 		='';
												foreach($provinces as $row){
													if($province==$row->name){
														$first 		='<option>'.$row->name.'</option>';
													}else{
														$other 		.='<option>'.$row->name.'</option>';
													}
												}

												if($first==''){
													echo $default.$other;
												}else{
													echo $first.$default.$other;
												}
											?>
										</select>
									</div>
									<div class="col-xs-12 col-sm-6 col-md-3 no-padding">
										<select id="distrit" class="form-control search-control">
											<option value=""><?php echo get_lang('select-distrit');?></option>
										</select>
									</div>
									
									<hr />
									<div class="col-xs-12 col-sm-6 col-md-5 no-padding">
											<?php
												$key="";
												if(isset($_GET['key'])){
													$key=$_GET['key'];
												}
											?>
											<input id="key"  type="text" class="form-control search-control"  placeholder="<?php echo get_lang('place-a-keyword-here');?>" value="<?php echo $key; ?>">
										
									</div>
									<div class="col-xs-12 col-sm-12 col-md-1 no-padding tex-center last-control-container" >
										<button id="btn-search" onclick="search()" class="btn btn-default search-control search-button"><i class="fa fa-search"></i> <b><?php echo get_lang('search');?><b></button>
									</div>
								</div>
							</div>		<?php echo get_lang('search');?>
				</div>


			   
				<div class="testimonial-wrap ihome-testi-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-12  pull-left">
								<div class="latest-post-wrap pull-left wow fadeInLeft" data-wow-delay="0.5s" data-wow-offset="100">
									<div class="subtitle col-xs-12 no-pad col-sm-11 col-md-12 pull-left news-sub"><?php echo get_lang('found hospitals');?></div>
								</div>
							</div>
							
							<div class="col-xs-12 col-sm-9" >
										
											<div class="container-fluid">
												<div class="row">
												<?php if(!empty($data)){ ?>
													<?php foreach($data as $row){ ?>
														<div class="col-xs-12 col-sm-6 col-md-4">
															<div>
																<div class="zoom-wrap">
																  <div class="zoom-icon"></div>
																	<a href="<?php echo base_url().$lang; ?>/phamacies/<?php echo $row->slug?>">
																		<img alt="" class="img-responsive" data-src="<?php echo base_url($row->image)?>" src="" />
																	</a>
																</div>
															</div>
															<div >
																	<div class="doc-name-class">
																		<a href="<?php echo base_url().$lang?>/phamacies/<?php echo $row->slug; ?>"><h3><?php echo $row->name ?></h3></a>
																	</div>
																	<span class="doc-title"> <i class="fa fa-envelope"></i> &nbsp; <?php echo $row->email ?></span><br />
																	<span class="doc-title"> <i class="fa fa-phone"></i> &nbsp; <?php echo $row->phone ?></span><br />
																	<span class="doc-title"> <i class="fa fa-map-marker"></i> &nbsp; <?php echo $row->distrit.', '.$row->province; ?></span><br />
																	
															</div>
															<hr />
														</div>
													<?php }?>
												<?php }else{?>
                                                    <div class="col-xs-12">
																<h4><?php echo get_lang('no_data');?></h4>
													</div>
												<?php } ?>
												</div>
												<div class="col-xs-12  pull-right">
													<?php echo $links; ?>
												</div>
											</div>		
										
									
									
							</div>
							
							
							<div class="col-xs-12 col-sm-3">
								
								<div class="container-fluid">
									<div class="row">
										<?php include("parts/ads_h.php"); ?>
									</div>
								</div>
							
							</div>
						</div>
						<br />
						 
					</div>
					<br />
				</div>
			
	<script>
 
		function search(){
			$("#btn-search").html("<img src='<?php echo base_url(); ?>assets/backend/images/loader-2.gif' />");
			province	=$("#province").val();
			province 	=province.replace(/ /gi, "+");
			distrit		=$("#distrit").val();
			distrit 	 =distrit.replace(/ /gi, "+");
			key			=$("#key").val();
			key 		=key.replace(/ /gi, "+");
			page 		= "<?php echo isset($_GET['distrit']) ? $_GET['distrit'] : 0 ?>"; 
			window.location.replace("<?php echo base_url().$lang; ?>/phamacies?province="+province+"&distrit="+distrit+"&key="+key+"&page="+page);
			
		}

		$(document).ready(function(){
			get_distrits();
			$('#province').change(function(){
				get_distrits();
			})
		})

		function get_distrits(){
		var province=$('#province').val();
		var distrit ='<?php echo isset($_GET['distrit']) ? $_GET['distrit'] : "" ?>';
		if(province!=''){
			$.ajax({
	                method:"POST",
	                url: "<?php echo base_url().$lang; ?>/get-data-distrits",
	                data: {
	                     
	                    "province": province, 
	                    "distrit" : distrit

	                }
	            }).done(function(respond) {
	                $("#distrit").html(respond);
	            });
		}
	}
	
	
  </script>