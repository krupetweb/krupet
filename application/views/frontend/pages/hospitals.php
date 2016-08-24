
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				
				<div id="search-panel-container">
							<div id="into" class="container text-right" >
								<span><?php //echo get_lang('hospital_can_be_searched');?></span>
							</div>
							<div id="search-panel" class="container" >
								<div class="row" style="padding:10px;">
									<div class="col-xs-12 ">
										<h4 class="heading">
										<?php 
											$caption=get_lang('find a hospital');
											if(isset($_GET['cat'])){
												$caption=$_GET['cat'];
											}
											if(isset($_GET['cat']) && isset($_GET['type'])){
												$caption=$_GET['cat'].' >> '.$_GET['type'];
											}
											echo $caption;
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
									<div class="col-xs-12 col-sm-6 col-md-3 no-padding">
										<select id="specification" class="form-control search-control">
											<?php
												$specification	=isset($_GET['specification']) ? $_GET['specification'] : "";
												$default 	='<option value="">'.get_lang('select-specification').'</option>';
												$first 		='';
												$other 		='';
												foreach($specifications as $row){
													if($specification==$row->name){
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
									<hr />
									<div class="col-xs-12 col-sm-6 col-md-2 no-padding">
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
							</div>		
				</div>
				
				<div class="testimonial-wrap ihome-testi-wrap">
					<div class="container">
						<div class="row">
							<div class="col-xs-12  pull-left">
								<div class="latest-post-wrap pull-left wow fadeInLeft" data-wow-delay="0.5s" data-wow-offset="100">
									<div class="subtitle col-xs-12 no-pad col-sm-11 col-md-12 pull-left news-sub"><?php //echo get_lang('found hospitals');?></div>
								</div>
							</div>
						</div>
						<div class="row">
									<?php if(!empty($data)){ ?>
										<?php foreach($data as $row){ ?>

											<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
												<div class="thumbnaild">
													<div class="zoom-wrap">
															<div class="zoom-icon"></div>
															<a href="<?php echo base_url().$lang; ?>/hospitals/<?php echo $row->slug?>">
																<img alt="" class="img-responsive" data-src="<?php echo base_url($row->image)?>" src="" />
															</a>
													</div>

													<div class="doc-name-class">
															<a href="<?php echo base_url().$lang?>/hospitals/<?php echo $row->slug; ?>"><h3><?php echo $row->name ?></h3></a>
													</div>
													<?php if(!empty($row->email)){?>
														<span class="doc-title"> <i class="fa fa-envelope"></i> &nbsp; <?php echo $row->email ?></span><br />
													<?php }?>
													<?php if(!empty($row->email)){?>
														<span class="doc-title"> <i class="fa fa-phone"></i> &nbsp; <?php echo $row->phone ?></span><br />
													<?php }?>
													<?php if(!empty($row->email)){?>
														<span class="doc-title"> <i class="fa fa-map-marker"></i> &nbsp; <?php echo $row->distrit.', '.$row->province; ?></span>
													<?php }?>
												</div>
													<hr />
											</div>
										<?php }?>
									<?php }else{?>
										<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
											<h4><?php echo get_lang('no_data');?></h4>
										</div>
									<?php }?>
						</div>


								<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<?php if(!empty($data)){ ?>
									<button class="btn btn-default" onclick="make_map_link()"><?php echo get_lang('view_on_map');?></button>

									<br />
									<?php echo $links; ?>
									<?php }?>
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
<?php
	$type="";
	if(isset($_GET['type'])){
		$type=$_GET['type'];
	}

?>
<input type="hidden" id="type" value="<?php echo $type ?>" />		
<script>
	
		  
	function search(){
	    $("#btn-search").html("<img src='<?php echo base_url(); ?>assets/backend/images/loader-2.gif' />");

		cat			='<?php echo isset($_GET['cat']) ? $_GET['cat'] : ""; ?>';
		cat 		=cat.replace(/ /gi, "+");
		type		='<?php echo isset($_GET['type']) ? $_GET['type'] : ""; ?>';
		type 		=type.replace(/ /gi, "+");

		province	=$("#province").val();
		province 	=province.replace(/ /gi, "+");
		distrit		=$("#distrit").val();
		distrit 	=distrit.replace(/ /gi, "+");
		specification	=$("#specification").val();
		specification 	=specification.replace(/ /gi, "+");
		key			=$("#key").val();
		key 		=key.replace(/ /gi, "+");
		window.location.replace("<?php echo base_url().$lang; ?>/hospitals?cat="+cat+"&type="+type+"&province="+province+"&distrit="+distrit+"&specification="+specification+"&key="+key);
		
	}

	$(document).ready(function(){
			get_distrits();
			$('#province').change(function(){
				get_distrits();
			})
	}); 

	function make_map_link(){
		cat			='<?php echo isset($_GET['cat']) ? $_GET['cat'] : ""; ?>';
		cat 		=cat.replace(/ /gi, "+");
		type		='<?php echo isset($_GET['type']) ? $_GET['type'] : ""; ?>';
		type 		=type.replace(/ /gi, "+");

		province	=$("#province").val();
		province 	=province.replace(/ /gi, "+");
		distrit		=$("#distrit").val();
		distrit 	=distrit.replace(/ /gi, "+");
		specification	=$("#specification").val();
		specification 	=specification.replace(/ /gi, "+");
		key			=$("#key").val();
		key 		=key.replace(/ /gi, "+");
		window.location.replace("<?php echo base_url().$lang; ?>/map?cat="+cat+"&type="+type+"&province="+province+"&distrit="+distrit+"&specification="+specification+"&key="+key);
	}


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