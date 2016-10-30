				<style>
				      #map {
				        width: 100%;
				        height: 500px;
				      }

				</style>
				<div class="" style="<?php if(isset($banner)){ if(!empty($banner)){ echo "background-image: url(".base_url().$banner[0]->image.")"; }} ?> ">
					<div class="container">
						<div class="inner-page-title-wrap col-xs-12 col-md-12 col-sm-12">
							<div class="bread-heading"><h1 style="<?php if(isset($banner)){ if(empty($banner)){ echo "color: gray"; }} ?> "><?=get_lang('doctor-profile')?></h1></div>
						</div>
					 </div>
				</div>
				<br />
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				<div class="container">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div class="container-fluid">
								<div class="row">
									<div class="col-sm-12 col-sm-3 col-md-5">
										<img alt="" class="img-responsive thumbnail" data-src="<?php echo base_url().$data[0]->image?>" src="" />
									</div>
									<div class="col-sm-12 col-sm-9 col-md-7" >
										<table class="table">
											<tr>
												<td width=25%><?php echo get_lang('name');?></td><td >:&nbsp;<b><?php echo $data[0]->title; ?> <?php echo $data[0]->name; ?></b></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('degree');?></td><td >:&nbsp;<?php echo $data[0]->degree; ?></td>
											</tr>
											
											<tr>
												<td ><?php echo get_lang('specialization');?></td><td >:&nbsp;<?php echo $data[0]->specification; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('work at');?>:</td><td >:&nbsp;
													
													<?php 
														
														if(!empty($hospitals)){
															foreach($hospitals as $row){
																echo '<a href="'.base_url().$lang.'/view-hospital/'.$row->slug.'" >'.$row->name.'</a>, ';
															}
														}
													?>
												</td>
											</tr>
											<tr>
												<td ><?php echo get_lang('phone_number');?></td><td >:&nbsp;<?php echo $data[0]->phone; ?></td>
											</tr>
											<tr>
												<td ><?php echo get_lang('email');?></td><td >:&nbsp;<?php echo $data[0]->email; ?></td>
											</tr>
										</table>
									</div>

									<div class="col-xs-12">
										
										<div class="department-wrap wow fadeInRight animated" data-wow-delay="0.5s" data-wow-offset="100" style="visibility: visible;-webkit-animation-delay: 0.5s; -moz-animation-delay: 0.5s; animation-delay: 0.5s;">
	                    					<div id="imedica-dep-accordion" class="ui-accordion ui-widget ui-helper-reset" role="tablist">
												<?php if($data[0]->background!=""){ ?>
												<h3  class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-0" aria-controls="ui-accordion-imedica-dep-accordion-panel-0" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-medkit dept-icon"></i><span class="dep-txt"><?php echo get_lang('xxxxx');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-0" aria-labelledby="ui-accordion-imedica-dep-accordion-header-0" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
													<div class="dept-content pull-left col-md-12">
														<p><?php echo $data[0]->background; ?></p>
														<div class="vspacer"></div>
													</div>
												</div>
												<?php } ?>
												
												<?php if($data[0]->experience!=""){ ?>
												<h3 class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-1" aria-controls="ui-accordion-imedica-dep-accordion-panel-1" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-stethoscope dept-icon"></i><span class="dep-txt"><?php echo get_lang('work & experience');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-1" aria-labelledby="ui-accordion-imedica-dep-accordion-header-1" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
													<div class="dept-content pull-left col-md-12">
														<p><?php echo $data[0]->experience; ?></p>
														<div class="vspacer"></div>
														</div>
												</div>
												<?php } ?>
												
												<?php if(!empty($services)){ ?>
												<h3  class=" last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-2" aria-controls="ui-accordion-imedica-dep-accordion-panel-2" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-dollar dept-icon"></i><span class="dep-txt"><?php echo get_lang('service & price');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-2" aria-labelledby="ui-accordion-imedica-dep-accordion-header-2" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
												   
													<div class="dept-content pull-left col-md-12">
														<div class="container-fluid doctor-bg">
															<?php echo $services->service; ?>		
														</div>
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
												
												<!-- Accordion Item -->
												<?php //if(!empty($map)){ ?>
												<!-- <h3  id="map_viewer" class="last-child-ac ilast-child-acc ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all" role="tab" id="ui-accordion-imedica-dep-accordion-header-5" aria-controls="ui-accordion-imedica-dep-accordion-panel-5" aria-selected="false" tabindex="-1"><span class="ui-accordion-header-icon ui-icon ui-icon-circle-arrow-e"></span><i class="fa fa-map-marker dept-icon"></i><span class="dep-txt"><?php echo get_lang('view map');?></span></h3>
												<div class="ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom" id="ui-accordion-imedica-dep-accordion-panel-5" aria-labelledby="ui-accordion-imedica-dep-accordion-header-5" role="tabpanel" aria-expanded="false" aria-hidden="true" style="display: none;">
												  
													<div class="dept-content " >
														<div id="map"></div>	
														<div class="vspacer"></div>
													</div>                
												</div> -->
												<?php //} ?>
												
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
			
		});
        
		
		
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
