
				<div class="" style="<?php if(isset($banner)){ if(!empty($banner)){ echo "background-image: url(".base_url().$banner[0]->image.")"; }} ?> ">
					<div class="container">
						<div class="inner-page-title-wrap col-xs-12 col-md-12 col-sm-12">
							<div class="bread-heading"><h1 style="<?php if(isset($banner)){ if(empty($banner)){ echo "color: gray"; }} ?> "><?=get_lang('hospital Profile')?></h1></div>
						</div>
					 </div>
				</div>
				<br />
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>


				
				<?php
					
					$address		="";
					$branch_name 	="";
					$working_hours	="";
					$phone      	="";
					$hot_line		="";
					$email			="";
					$website		="#";
					$facebook_link 	="#";
					$lat 			=0;
					$lon 			=0;
					//$image 			="";

					if(!empty($contact)){
						$branch_name	=$contact[0]->name;
						$address		=$contact[0]->address;
						$working_hours	=$contact[0]->working_hours;
						$phone	 		=$contact[0]->phone;
						$email			=$contact[0]->email;
						$website		=$contact[0]->website;
						$facebook_link	=$contact[0]->facebook_link;
						$lat 			=$contact[0]->lat;
						$lon 			=$contact[0]->lon;
						$hot_line       =$contact[0]->hot_line;
						//$image 			=$contact[0]->image;
					}

				?>
				<div class="container">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div class="container-fluid">
								<div class="row">
									<div class="col-sm-12 col-sm-4 col-md-5" >
										<img alt="" class="img-responsive " data-src="<?php echo base_url().$data[0]->image?>" src="" />
										<div>
										      	
										      	
										</div>
									</div>
									<div class="col-sm-12 col-sm-8 col-md-7" >
										<table class="table">

											<tr>
												<td width=25%><?php echo get_lang('name');?></td><td >:&nbsp;<b><?php echo $data[0]->name; ?></b></td>
											</tr>
<!--											<tr>-->
<!--												<td >--><?php //echo get_lang('director');?><!--</td><td >:&nbsp;--><?php //echo $data[0]->director; ?><!--</td>-->
<!--											</tr>-->
											<tr>
												<td ><?php echo get_lang('type');?></td><td >:&nbsp;<?php echo $data[0]->type; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('address');?></td><td >:&nbsp;<?php echo $address; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('open hour');?></td><td >:&nbsp;<?php echo $working_hours; ?></td>
											</tr>											
											<tr>
												<td >Hotline </td><td >:&nbsp;<?php echo $hot_line ; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('phone_number');?></td><td >:&nbsp;<?php echo $phone; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('email');?></td><td >:&nbsp;<?php echo $email; ?></td>
											</tr>
											<?php if(!empty($website)){?>
												<tr>
													<td ><?php echo get_lang('website');?></td><td >:&nbsp;<a href="<?php echo $website; ?>"><?php echo $website; ?></a></td>
												</tr>
											<?php }?>
											<?php if(!empty($facebook_link)){?>
												<?php if($data[0]->id_cat==2){ ?>
													<tr>
														<td >Facebook</td><td >:&nbsp;<a href="<?php echo $facebook_link; ?>"><?php echo $facebook_link; ?></a></td>
													</tr>
												<?php } ?>
											<?php }?>

										</table>

									</div>
									<div class="col-xs-12">

									</div>
									<div class="col-xs-12">
										<div class="department-wrap wow fadeInRight animated" data-wow-delay="0.5s" data-wow-offset="100" style="visibility: visible;-webkit-animation-delay: 0.5s; -moz-animation-delay: 0.5s; animation-delay: 0.5s;">
											<div id="imedica-dep-accordion" class="ui-accordion ui-widget ui-helper-reset" role="tablist">
												<!-- Accordion Item -->
												
												<?php if($data[0]->background!=""){ ?>
												<h3 class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-0" aria-controls="ui-accordion-imedica-dep-accordion-panel-0" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-ambulance dept-icon"></i><span class="dep-txt"><?php echo get_lang('background-hospital');?></span></h3>
												<div  class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-0" aria-labelledby="ui-accordion-imedica-dep-accordion-header-0" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
													
														<div class="container-fluid doctor-bg">
															<?php echo $data[0]->background; ?>
														</div>
														<div class="vspacer"></div>
													
												</div>
												<?php } ?>
												
												<?php if(!empty($doctors)){ ?>
												<h3 class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-1" aria-controls="ui-accordion-imedica-dep-accordion-panel-1" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-user-md dept-icon"></i><span class="dep-txt"><?php echo get_lang('doctor');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-1" aria-labelledby="ui-accordion-imedica-dep-accordion-header-1" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
													
													<div class="dept-content pull-left col-md-12 col-lg-12" style="margin-bottom:20px;">
													
														<?php foreach($doctors as $row){ ?>
															<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3" >
																<div class="zoom-wrap">
																  <div class="zoom-icon"></div>
																	<img alt="" class="img-responsive" data-src="<?php echo base_url().$row->image?>" src="" />
																</div>
																<div class="doc-name">
																	<a href="<?php echo base_url().$lang?>/view-doctor/<?php echo $row->slug;?>">
																		<div class="doc-name-class"><?php echo $row->name?></div><span class="doc-title"> <i class="fa fa-stethoscope"></i> &nbsp; <?php echo $row->specification?></span></a>
																	<br />
																</div>
															</div>
														<?php } ?>
														
													</div>
													
												</div>
												<?php } ?>
												
												<?php if(!empty($services)){ ?>
												<h3  class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-2" aria-controls="ui-accordion-imedica-dep-accordion-panel-2" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-medkit dept-icon"></i><span class="dep-txt"><?php echo get_lang('service & price');?></span></h3>
												<div  class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-2" aria-labelledby="ui-accordion-imedica-dep-accordion-header-2" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
												    <br />
												    <div class="container-fluid doctor-bg">
														<?php echo $services[0]->service; ?>		
													</div>
													<div>
														
														
														<div class="vspacer"></div>
													</div>                
												</div>
												<?php } ?>
												
												<?php if(!empty($galleries)){ ?>
												<h3  class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-2" aria-controls="ui-accordion-imedica-dep-accordion-panel-2" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-photo dept-icon"></i><span class="dep-txt"><?php echo get_lang('galleries');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-2" aria-labelledby="ui-accordion-imedica-dep-accordion-header-2" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
												   <div class="dept-content pull-left col-md-12">
														<div class="container-fluid">
															<div class="row">
																<script type="text/javascript" src="<?php echo base_url();?>assets/frontend/plugin/fancybox/jquery.fancybox.js?v=2.1.5"></script>
																<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/frontend/plugin/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />

																<?php foreach($galleries as $row){?>
																<div class="col-xs-12 col-sm-2 col-md-4">
																	<a class="fancybox" href="<?php echo base_url().$row->image; ?>" data-fancybox-group="gallery" title="<?php echo $row->name; ?>">
																		<img class="img img-responsive thumbnail" src="<?php echo base_url().$row->image; ?>"/>
																	</a>
																</div>
																<?php }?>
															</div>
														</div>
													</div>               
												</div>
												<?php } ?>
												<?php if(!empty($branches)){ ?>
												<h3  id="map_viewer" class="last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-5" aria-controls="ui-accordion-imedica-dep-accordion-panel-5" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-map-marker dept-icon"></i><span class="dep-txt"><?php echo get_lang('view map');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-5" aria-labelledby="ui-accordion-imedica-dep-accordion-header-5" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
												  
													<div class="dept-content " >
														<div id="map"></div>	
														<div class="vspacer"></div>
														<div class="container-fluid">
															<div class="row">
																<?php foreach($branches as $row){ ?>
																	<div class="col-xs-12 col-md-4">
																		<table class="table" >
																			<tr>
																				<td><b><?php echo $row->name; ?></b></td>
																			</tr>
																			<tr>
																				<td><i class="fa fa-hospital-o"></i> <?php echo $row->address; ?></td>
																			</tr>
																			<tr>
																				<td><i class="fa fa-phone"></i> <?php echo $row->phone; ?></td>
																			</tr>
																			<tr>
																				<td><i class="fa fa-envelope-o"></i> <?php echo $row->email; ?></td>
																			</tr>
																			<tr>
																				<td><i class="fa fa-clock-o"></i> <?php echo $row->working_hours; ?></td>
																			</tr>
																			<tr>
																				<td><a href="#map_viewer" onclick="lookup(<?php echo $row->lat; ?>, <?php echo $row->lon; ?>, '<?php echo $row->name; ?>', '<?php echo $row->address; ?>', '<?php echo $row->phone; ?>', '<?php echo $row->email; ?>')" class="btn btn-default btn-xs"> <i class="fa fa-map-marker"></i> View Map</a></td>
																			</tr>
																		</table>
																	</div>
																<?php } ?>
															</div>
														</div>
													</div>                
												</div>
												<?php } ?>
											
											</div>
										</div>
										
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
							<div class="container-fluid">
								<div class="row">
								 <!--Latest Post Start-->
									 <!--:::::::::::::::::::::::::::::::::::::: Aside-->
									<?php include("parts/ads_h.php"); ?>	
								</div>
							</div>
						
						</div>
					</div>
					<br />
				</div>


<script type="text/javascript" src="http://maps.google.com/maps/api/js"></script>
<script style="text/javascript">
	

	function lookup (lat, lon, name, address, phone, email) {
        //Scroll to top
        if(scroll == true){
            $('html,body').animate({ scrollTop: 0 }, 'slow');
        }
       // alert(lat);
       // var latlng = new google.maps.LatLng(lat,lng);
        var latlng = new google.maps.LatLng(lat,lon)
        var myOptions = {
                            zoom: 15,
                            zoomControl:true,
                             mapTypeControl:true,
                             scaleControl:true,
                             rotateControl:true,
                             streetViewControl:true,
                            center: latlng,
                            mapTypeId: google.maps.MapTypeId.ROADMAP,
                            disableDefaultUI: true,
                            scrollwheel: false
                        };

       var contentString = '<div id="content">'+
		  '<h6>'+name+'</h6>'+
		  '<p>'+
		  		'<i class="fa fa-hospital-o"></i>: '+address+'<br />'+
		  		'<i class="fa fa-envelope-o"></i>: ' + email +
		  '</p>'+
		  '</div>';

        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        var map = new google.maps.Map(document.getElementById('map'), myOptions);
        var image = '<?php echo base_url()?>assets/frontend/images/icon/marker.png';
        var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        title: "<?=$data[0]->name?>",
        icon: image
        });
        infowindow.open(map,marker);
        google.maps.event.addListener(marker, 'click', function() {
        infowindow.open(map,marker);
        });
};

    
	//::::::::::::::::::::::::::::::::::::::::::::::>> Fancy Box
	$(document).ready(function() {
		<?php if(!empty($galleries)){ ?>
		$('.fancybox').fancybox();
		<?php } ?>
		
		$( "#map_viewer" ).click(function() {
			if($("#ui-accordion-imedica-dep-accordion-panel-5").show()){
				lookup(<?php echo $lat; ?>, <?php echo $lon; ?>, "<?php echo $branch_name ?>", "<?php echo $address ?>", "", "<?php echo $email; ?>")
			}
		});
		
		//get_comments();
		//$('#rating-data').show();
		get_price();

		
	});
    
	function get_comments(){
		id_department=$("#department").val();
		$.ajax({
		  url: "<?php echo base_url(); ?>hospital/get_comments/"+id_department+"/"+<?php echo $id_hospital; ?>,
		}).done(function(respond) {
		  $("#comment-container").html(respond);
		});
	}
	function get_price(){
		id_department=$("#price_department").val();
		console.log("<?php echo $id_hospital; ?>");
		$.ajax({
		  url: "<?php echo base_url(); ?><?php echo $lang; ?>/get-price/"+<?php echo $id_hospital; ?>+"/"+id_department,
		}).done(function(respond) {
			console.log(respond);
		  $("#price-container").html(respond);
		});
	}
	
</script>

    <style>
  #map {
    width: 100%;
    height: 500px;

  }
  .doctor-bg{
  	padding: 15px 10px;
  }
  .doctor-bg p{
  		font-size:14px;
  		font-family: Hanuman, Arial, serif;
  }
  ul{
  	padding-left:20px;
  }
  .doctor-bg ul li{
  		list-style-type: circle !important;
  		line-height:1.8;
  		font-family: Hanuman, Arial, serif;
  }
  .star-rate{
  	display:inline;
  	padding:0px;
  }
  .star-rate li{
  	display:inline;
  }
  .star-rate li img{
  		width:20px;
  }
  .table-rating{
  	width:100%;
  	color:grey;
  }
  .table-rating tr td b i{
  	font-size:50px;
  	color:red;
  }
  .star-rate-sumary{
  	width:90% !important;
  	color:grey;
  }
  .star-rate-sumary li img{
  	width:20px;
  }	
   .star-rate-sumary tr td b{
  	float:right;
  }	
   .star-rate-sumary li{
  	display:inline;
  }	

  .faq-tabs-wrap .tab-pane img {
		    margin: 0;
		    border: 0px solid #fff; 
		    box-shadow: 0px 0px 0px 0px;
		}
		select{
			color:gray !important;
			border-color:gray !important;
			margin-bottom:10px;
		}
</style>
