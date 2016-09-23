<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.carousel.css">
<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.theme.css">
<link rel="stylesheet" href="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.transitions.css">
<script type="text/javascript" src="<?=$src_url?>assets/frontend/plugin/owl-carousel/owl.carousel.min.js"></script>

<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/flexslider.css">
<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/jquery-ui.css">
<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/style.css">
<link rel="stylesheet" href="<?=$src_url?>assets/frontend/banner-plugin/colors.css">
<script type="text/javascript" src="<?=$src_url?>assets/frontend/banner-plugin/jquery-ui.min.js"></script>
<script type="text/javascript" src="<?=$src_url?>assets/frontend/banner-plugin/range-slider.js"></script>

<?php include('parts/ads_v.php'); ?>

 <br />
<!--				//new banner-->
<div id="carousel-example-generic1" class="carousel slide" data-ride="carousel">
	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<?php foreach($programes as $key => $row){ ?>

			<div class="item <?php echo $key == 0?'active':''?>">

				<div class="description">
					<div class="container">
						<div class="row">
							<div class="col-xs-12">
<!--												<h1><em>reserve a room for</em><br class="hidden-xs"> <span>family vacation</span></h1>-->
							</div>
						</div>
					</div>
				</div>
				<img src="<?=$src_url?><?php echo $row->image?>" alt="image description">
			</div>

		<?php }?>

	</div>
	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev"></a>
	<a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next"></a>
</div>
<!-- reservation-bar -->
<div class="reservation-bar">
	<div class="container">
		<!-- <form name="login-form" id="register-forms" class="forms" method="post" action="<?=$lang_url?>search"> -->
			<div class="col-md-12 col-sm-12">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
		             	<div class="no-margin-bottom form-group ">
							<select class="form-control search-control" id="province_B" name="province">
								<option value=""><?php echo get_lang('select-province');?></option>
								<?php 
								foreach($provinces as $row){ ?>
									<option value="<?php echo $row->name; ?>"  ><?php echo $row->name; ?></option>
								<?php } ?>
							</select>
							
						</div>
		            </div>
		            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3">
		             	<div class="no-margin-bottom form-group ">
							<select class="form-control search-control" id="distrit_B" name="distrit" >
								<option value=""><?php echo get_lang('select-distrit');?></option>
							</select>
							
						</div>
		            </div>
					<div class="col-xs-12 col-sm-6 col-sm-4">
						<input type="text" id="target" name="key" class="form-control search-control" value=""
						placeholder="<?php echo get_lang('specialization').','.get_lang('doctor').','.get_lang('clinics').','.get_lang('hospital'); ?> " value="" autocomplete="off">
					</div>
					<div class="col-xs-12 col-sm-6 col-sm-2">
						<button id="btn-search-phone_B" class="btn btn-default search-button"><i class="fa fa-search"></i> <?php echo get_lang('search');?></button>
						<!-- <input type='submit' id='btnValidate' name="submit" Value='Login' /> -->
					</div>
				</div>
			</div>
		<!-- </form> -->
	</div>
</div>

<!--				end-->
<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> specifications << ?>
<?php if(isset($search)){?>
<div class="container pd-right-0">
	<div class="col-xs-12">
		<section class="nopadding clearfix text-center">
			<div class="row">
				<div class="col-xs-12 col-sm-9" >
						<div class="container-fluid">
							<div class="row">
								<?php if(!empty($search)){ ?>
									<?php foreach($search as $row){ ?>
										<div class="col-xs-12 col-sm-6 col-md-4">
											<div>
												<div class="zoom-wrap">
												  <div class="zoom-icon"></div>
													<a href="<?php echo base_url().$lang; ?>/doctors/<?php echo $row->slug?>">
														<img alt="" class="img-responsive" data-src="<?php echo base_url($row->image)?>" src="" />
													</a>
												</div>
											</div>
											<div>
												
												<div class="doc-name-class">
													<a href="<?php echo base_url().$lang?>/doctors/<?php echo $row->slug; ?>"><h3><?php echo $row->name ?></h3></a>
												</div>
												<!-- <span class="doc-title"> <i class="fa fa-stethoscope"></i> &nbsp; <?php echo $row->specification ?></span><br /> -->
												<span class="doc-title"> <i class="fa fa-envelope"></i> &nbsp; <?php echo $row->email ?></span><br />
												<span class="doc-title"> <i class="fa fa-phone"></i> &nbsp; <?php echo $row->phone ?></span><br />
												<span class="doc-title"> <i class="fa fa-map-marker"></i> &nbsp; <?php echo $row->distrit.', '. $row->province ?></span><br />
												
											</div>
											<hr />
										</div>
									<?php }?>
								<?php }else{?>
										<div class="col-xs-12">
											<h4><?php echo get_lang('no_data');?></h4>
										</div>
								<?php }?>
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
		</section>

	</div>
	
</div>
<?php } ?>
<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> specifications << ?>
<?php if(isset($specifications)){?>
<div class="container pd-right-0">
	<div class="col-xs-12">
		<section class="nopadding clearfix text-center">
			<h2 class="color-black border-red"><?php echo get_lang('specialization'); ?></h2>
			<div class="row text-center">
				<?php if(!empty($specifications)){?>
					<?php foreach($specifications as $row) { 

						if(isset($row->icon)){
							if(file_exists(FCPATH.$row->icon)){
				                $img_path=base_url($row->icon);
				            }
						}
			            
						?>
						<div class="col-lg-2 col-md-2 col-sm-3 col-xs-4 height-130">
							<a href="<?php echo $lang_url.'specialist?specification='.str_replace(" ", "+", $row->name);?>" class="thumbnaild text-center">

								<img src="<?=base_url()?>/<?php echo $row->image?>" style="width:50px;" >
								
								<p><?=$row->name?></p>
							</a>
						</div>
					<?php } ?>
				<?php } else {echo ' <h3>'.get_lang('blog-caption').'</h3>'; }?>
			</div>
		</section>

	</div>
	
</div>
<?php } ?>
<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Hotline << ?>
<?php 
	if(isset($search)){
		
	}else{
		include('parts/hotline.php') ;
	}

?>

<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> tip << ?>
<?php if(isset($get_tips_home_page)){?>
<div class="container pd-right-0" >
	<div class="col-xs-12">
		<section class="nopadding clearfix">
			<h2 class="color-black border-red"><?php echo get_lang('tips');?></h2>
			<div class="col-sm-8">
				<div id="search_result_container" class="container-fluid">
					<?php if(!empty($get_tips_home_page)){?>
						<?php foreach($get_tips_home_page as $row) { ?>
							<div class="row">

								<div class="col-xs-12 col-sm-12 col-md-5" >
									<div class="zoom-wrap">
									  <div class="zoom-icon"></div>
										<a  href="<?php echo base_url();?><?php echo $lang;?>/blog-detail/<?php echo $row->slug; ?>">
											<img alt="" data-src=" <?php echo base_url()?><?php echo $row->image ?> " src=" " class="img-responsive">
										</a>
										
									</div>
								</div>
								<div class="col-xs-12 col-sm-12 col-md-7" >
									<div class="text-left">
										<div class="blogs-box-title blogs-box-title-news">
											<a  href="<?php echo base_url();?><?php echo $lang;?>/blog-detail/<?php echo $row->slug; ?>">
												<?php echo $row->title ?>
											</a>
										</div>
										<div  class="data-formate-front"><i class="fa fa-calendar"></i>:  <?php echo date_format1($row->created_dt) ?></div>
										<p >
											<?php echo $row->pre_content ?>
										</p>

										<a style="float:right;font-size: 11px"  href="<?php echo base_url();?><?php echo $lang;?>/blog-detail/<?php echo $row->slug; ?>"><?php echo get_lang('read more');?> &gt;&gt;</a>
									</div>
								</div>

							</div>
							<hr />
						<?php } ?>
					<?php }else {echo ' <h3>'.get_lang('blog-caption').'</h3>'; }?>
				</div>
			</div>
		</section>
	</div>
</div>
<?php } ?>
<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Partner << ?>
<?php include("parts/partners.php"); ?>
<script>
	$(document).ready(function(){
		
		$("#province_B").change(function(){
			get_distritb();
		});
		$('.owl-fullwidth').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            dots:false,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:2
                },
                1000:{
                    items:4
                }
            }
        });
        $('#owl-programs').owlCarousel({
			  navigation : false, // Show next and prev buttons
			  slideSpeed : 300,
			  paginationSpeed : 400,
			  singleItem:true
        });
	});
	function get_distritb(){
		var id_province=$("#province_B").val();
		var distrit ='<?php echo isset($_GET['distrit']) ? $_GET['distrit'] : "" ?>';
		$.ajax({
            method:"POST",
            url: "<?=$lang_url?>get-data-distrits",
            data: {

                "province": id_province,
                "distrit" : distrit
            }
        }).done(function(respond) {
        	// console.log(respond);
        	// obj=JSON.parse(respond);
           	
           	$("#distrit_B").html(respond);
            
        });
	}
	jQuery(function( $ ) {
    var $register = $('#register-forms');
    var $search = $('#btn-search-phone_B');
    $search.click(function(){
        var province_B = $("#province_B").val();
        var distrit_B = $("#distrit_B").val();
        var target = $("#target").val();
        if(province_B !='' || distrit_B !='' || target !=''){
        	window.location.replace("<?php echo base_url().$lang; ?>/search?province="+province_B+"&distrit="+distrit_B+"&key="+target);
        }

    });

  });

</script>
