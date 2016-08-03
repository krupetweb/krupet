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

			    </style>
				<!-- Add fancyBox main JS and CSS files -->
				<script type="text/javascript" src="<?php echo base_url();?>assets/frontend/plugin/fancybox/jquery.fancybox.js?v=2.1.5"></script>
				<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>assets/frontend/plugin/fancybox/jquery.fancybox.css?v=2.1.5" media="screen" />

				<?php include('parts/banner.php'); ?>

				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				
				<?php
					
					$address		="";
					$working_hour	="";
					$phone      	="";
					$email			="";
					$lat			=0;
					$lon			=0;
					//$image 			="";

					if(!empty($data)){
						$address		=$data[0]->address;
						$working_hour	=$data[0]->working_hour;
						$phone	 		=$data[0]->phone;
						$email			=$data[0]->email;
						$website		=$data[0]->website;
						$lat			=$data[0]->lat;
						$lon			=$data[0]->lon;
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
										<div class="text-center">
											<a href="<?php base_url() ?>">
												<img alt="" style="width:30px;" data-src="<?php echo base_url();?>assets/frontend/images/icon/facebook_circle_color-512.png" src="" />
											</a>
										</div>
									</div>
									<div class="col-sm-12 col-sm-8 col-md-7" >
										<table class="table">

											<tr>
												<td width=25%><?php echo get_lang('name');?></td><td >:&nbsp;<b><?php echo $data[0]->name; ?></b></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('type');?></td><td >:&nbsp;Phamacy</td>
											</tr>
											<tr>
												<td ><?php echo get_lang('address');?></td><td >:&nbsp;<?php echo $address; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('open hour');?></td><td >:&nbsp;<?php echo $working_hour; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('phone_number');?></td><td >:&nbsp;<?php echo $phone; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('email');?></td><td >:&nbsp;<?php echo $email; ?></td>
											</tr>
											
										</table>

									</div>
									<div class="col-xs-12" style="">
										


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
												<h3 class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-1" aria-controls="ui-accordion-imedica-dep-accordion-panel-1" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-user-md dept-icon"></i><span class="dep-txt"><?php echo get_lang('doctors');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-1" aria-labelledby="ui-accordion-imedica-dep-accordion-header-1" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
													
													<div class="dept-content pull-left col-md-12 col-lg-12" style="margin-bottom:20px;">
													
														<?php foreach($doctors as $row){ ?>
															<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3" >
																<div class="zoom-wrap">
																  <div class="zoom-icon"></div>
																	<img alt="" class="img-responsive" data-src="<?php echo base_url().$row->image?>" src="" />
																</div>
																<div class="doc-name">
																	<a href="<?php echo base_url().$lang?>/view-doctor/<?php echo $row->id_doctor;?>">
																		<div class="doc-name-class"><?php echo $row->name?></div><span class="doc-title"> <i class="fa fa-stethoscope"></i> &nbsp; <?php echo $row->specialist?></span></a>
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
												   
													<div class="dept-content pull-left col-md-12">
														<table class="table">
															<thead>
																 <tr>
																 	<th><?php echo get_lang('no.');?></th>
																 	<th><?php echo get_lang('department');?></th>
																 	<th><?php echo get_lang('name');?></th>
																 	<th><?php echo get_lang('price');?></th>
																 	<th><?php echo get_lang('note');?></th>
																 <tr>
															</thead>
															<tbody>
																<?php $i=1;?>
																<?php foreach($services as $row){ ?>
																	 <tr>
																	 	<td><?php echo $i; $i++?></td>
																	 	<td rospan=""><?php echo $row->department ?></td>
																	 	<td><?php echo $row->name ?></td>
																	 	<td><?php echo $row->price ?></td>
																	 	<td><?php echo $row->note; ?></td>
																	 </tr>
																<?php }?>
															</tbody>
														</table>
														
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
			  		'<i class="fa fa-phone"></i>: '+phone+'<br />'+
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
			
			$('.fancybox').fancybox();

			
			$( "#map_viewer" ).click(function() {
				if($("#ui-accordion-imedica-dep-accordion-panel-5").show()){
					lookup(<?php echo $lat; ?>, <?php echo $lon; ?>, '<?php echo $address ?>', '<?php echo $phone; ?>', '<?php echo $email; ?>')
				}
			 	
			});
			
		});
		
    </script>