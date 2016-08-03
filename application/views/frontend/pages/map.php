
				<style>
					#map_wrapper {
					    height: 550px;
					}

					#map_canvas {
					    width: 100%;
					    height: 100%;
					}
				</style>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				
				
				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-2 col-lg-3" style="">
							<div id="search-panel-c" style="">
								<div class="row">
									

									<div class="col-xs-12 ">
										<h4 class="heading"><?php echo get_lang('search_by_map');?></h4>
									</div>
                                    <div class="col-xs-12" style="">
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
									<div class="col-xs-12 no-padding">
										<select id="distrit" class="form-control search-control">
											<option value=""><?php echo get_lang('select-distrit');?></option>
										</select>
									</div>
									<div class="col-xs-12">
											<?php
												$key="";
												if(isset($_GET['key'])){
													$key=$_GET['key'];
												}
											?>
											<input id="key"  type="text" class="form-control search-control"  placeholder="<?php echo get_lang('place-a-keyword-here');?>" value="<?php echo $key; ?>">
									</div>
									<div class="col-xs-12" >
										<button id="btn-search" onclick="search()" class="btn btn-default search-control search-button"><i class="fa fa-search"></i> <b><?php echo get_lang('search');?><b></button>
									</div>
									<div class="col-xs-12" >
										<button class="btn btn-default search-control search-button" onclick="make_map_link()"><?php echo get_lang('view_as_search_result');?></button>
									    <br />
								        <?php echo $links; ?>
									</div>

									<div class="col-xs-12 hidden-xs" >
									    <?php if(!empty($ads_h)){ ?>
										<a href="<?php $ads_h[0]['link']; ?>" ><img alt="" class="img-responsive" data-src="<?php echo base_url().$ads_h[0]['image']; ?>" src="" /></a>
									    <?php } ?>
									</div>

									
									
								</div>
							</div>
						</div>
				
						   
						<div class="col-xs-12 col-sm-12 col-md-10 col-lg-9">
							<?php if(!empty($data)){ ?>
								<div id="map_wrapper">
								    <div id="map_canvas" class="mapping"></div>
								</div>
							<?php }else{ ?>
                                 <div class="col-xs-12 text-center">
									<h4 style="margin-top:80px;"><?php echo get_lang('no_data');?></h4>
								</div>
							<?php } ?>
						</div>

					</div>
				</div>
				<br />


				


				<script>
						function search(){
							$("#btn-search").html("<img src='<?php echo base_url(); ?>assets/backend/images/loader-2.gif' />");

							cat			='<?php echo isset($_GET['cat']) ? $_GET['cat'] : ""; ?>';
							cat 		=cat.replace(/ /gi, "+");
							type		='<?php echo isset($_GET['type']) ? $_GET['type'] : ""; ?>';
							type 		=type.replace(/ /gi, "+");
							specification	='<?php echo isset($_GET['specification']) ? $_GET['specification'] : ""; ?>';
							specification 	=specification.replace(/ /gi, "+");

							province	=$("#province").val();
							province 	=province.replace(/ /gi, "+");
							distrit		=$("#distrit").val();
							distrit 	=distrit.replace(/ /gi, "+");
							key			=$("#key").val();
							key 		=key.replace(/ /gi, "+");
							window.location.replace("<?php echo base_url().$lang; ?>/map?cat="+cat+"&type="+type+"&province="+province+"&distrit="+distrit+"&specification="+specification+"&key="+key);							
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
						function make_map_link(){
							cat			='<?php echo isset($_GET['cat']) ? $_GET['cat'] : ""; ?>';
							cat 		=cat.replace(/ /gi, "+");
							type		='<?php echo isset($_GET['type']) ? $_GET['type'] : ""; ?>';
							type 		=type.replace(/ /gi, "+");
							specification	='<?php echo isset($_GET['specification']) ? $_GET['specification'] : ""; ?>';
							specification 	=specification.replace(/ /gi, "+");

							province	=$("#province").val();
							province 	=province.replace(/ /gi, "+");
							distrit		=$("#distrit").val();
							distrit 	=distrit.replace(/ /gi, "+");
							key			=$("#key").val();
							key 		=key.replace(/ /gi, "+");
							window.location.replace("<?php echo base_url().$lang; ?>/hospitals?cat="+cat+"&type="+type+"&province="+province+"&distrit="+distrit+"&specification="+specification+"&key="+key);
						}

						jQuery(function($) {
						    // Asynchronously Load the map API 
						    var script = document.createElement('script');
						    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
						    document.body.appendChild(script);
						});

						function initialize() {
						    var map;
						    var bounds = new google.maps.LatLngBounds();
						    var mapOptions = {
						        mapTypeId: 'roadmap'
						    };
						                    
						    // Display a map on the page
						    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
						    map.setTilt(45);
						     
						    <?php 
						    	$makers="";
								$description="";
								foreach($data as $row){
									$makers.='[\''.$row->name.'\', '.$row->lat.','.$row->lon.'],';
									;
								}
							?>

						    // Multiple Markers
						    var markers = [
						       <?php echo $makers; ?>
						    ];
						                        
						    // Info Window Content
						    var infoWindowContent = [<?php echo $description; ?>];
						        
						    // Display multiple markers on a map
						    var infoWindow = new google.maps.InfoWindow(), marker, i;
						    
						    // Loop through our array of markers & place each one on the map  
						    for( i = 0; i < markers.length; i++ ) {
						        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
						        bounds.extend(position);
						        marker = new google.maps.Marker({
						            position: position,
						            map: map,
						            title: markers[i][0], 
									icon: '<?php echo base_url()?>assets/frontend/images/icon/marker2.png'
						        });
						        
						        // Allow each marker to have an info window    
						        google.maps.event.addListener(marker, 'click', (function(marker, i) {
						            return function() {
						                infoWindow.setContent(infoWindowContent[i][0]);
						                infoWindow.open(map, marker);
						            }
						        })(marker, i));

						        // Automatically center the map fitting all markers on the screen
						        map.fitBounds(bounds);
						    }

						    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
						    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
						        this.setZoom(8);
						        google.maps.event.removeListener(boundsListener);
						    });
						    
						}
				
				</script>


	