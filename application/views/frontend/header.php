
					<div class="header-bg">
						<!--Topbar-->
<!--						<div class="topbar-info no-pad">                    -->
<!--							<div class="container">                     -->
<!--								<div class="social-wrap-head col-md-2 no-pad">-->
<!--									<ul>-->
<!--										<li><a href="#"><i class="fa fa-facebook head-social-icon" id="face-head" data-original-title="" title=""></i></a></li>-->
<!--										<li><a href="#"><i class="fa fa-twitter head-social-icon" id="tweet-head" data-original-title="" title=""></i></a></li>-->
<!--										<li><a href="#"><i class="fa fa-linkedin head-social-icon" id="link-head" data-original-title="" title=""></i></a></li>-->
<!--									</ul>-->
<!--								</div>                            -->
<!--								<div class="top-info-contact pull-right col-md-6 text-right">-->
<!--									<span>Contact us via: Tel.+85517567099 | contact@krupet.com </span>-->
<!--								</div>-->
<!--								                     -->
<!--							</div>-->
<!--						</div><!--Topbar-info-close-->
						
						<div id="headerstic" style="">
							<div class=" top-bar container">
								<div class="row">
									<nav class="navbar navbar-default" role="navigation">
									    <div class="navbar-header">
									        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
										        <span class="sr-only">Toggle navigation</span>
										        <span class="icon-bar"></span>
										        <span class="icon-bar"></span>
										        <span class="icon-bar"></span>
									        </button>
									        <a class="navbar-brand" href="<?php echo base_url();?><?php echo $lang; ?>">
									        		<img src="<?php echo base_url()?>assets/frontend/images/logo1.png" class="img img-responsive" style="    padding-left: 20px;">
											</a>
									    </div>
									    <!--/.navbar-header-->
									
									    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
									        <ul class="nav navbar-nav navbar-right">
										        <li>
													<a href="<?php echo base_url();?><?php echo $lang; ?>" ><i class="fa fa-home"></i> &nbsp; <?php echo get_lang('home'); ?></a>
												</li>

												<?php if($this->session->userdata('hospital_menu')){ ?>
													<?php $hospital_menu=$this->session->userdata('hospital_menu'); ?>

													<li class="dropdown <?php if(isset($active_menu) AND $active_menu=='hospitals') echo 'active'; ?>">
														<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-hospital-o"></i> &nbsp; <?php echo get_lang('hospital'); ?><b class="caret"></b></a>
														<ul class="dropdown-menu multi-column columns-3" style="left:0px !important;">
															<?php foreach($hospital_menu as $row){ ?>

																	<ul class="multi-column-dropdown">
																		<li class="header-sub-manu ">
																			<a href="<?php echo base_url();?><?php echo $lang; ?>/hospitals?cat=<?php echo str_replace(" ", "+", $row['name']); ?>"><strong><?php echo $row['name']; ?></strong> <span class="fa fa-caret-right pull-right"></span></a>
																		</li>
																		<?php foreach($row['items'] as $item){ ?>
																			<li class="body-sub-manu"><a href="<?php echo base_url();?><?php echo $lang; ?>/hospitals?cat=<?php echo str_replace(" ", "+", $row['name']); ?>&type=<?php echo str_replace(" ", "+", $item->name); ?>"><?php echo $item->name; ?></a></li>
																		<?php }?>
																	</ul>

															<?php }?>
														</ul>
													</li>
												<?php }?>

										      	<li class="<?php if(isset($active_menu) AND $active_menu=='doctors') echo 'active'; ?>">
													<a href="<?php echo base_url();?><?php echo $lang; ?>/doctors" ><i class="fa fa-user-md"></i> &nbsp; <?php echo get_lang('doctor'); ?></a>
												</li>
												
<!--										        <li class="dropdown --><?php //if(isset($active_menu) AND $active_menu=='speicfication') echo 'active'; ?><!--">-->
<!--											        	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-stethoscope"></i> &nbsp; --><?php //echo get_lang('specialization'); ?><!--<b class="caret"></b></a>-->
<!--											           <ul class="dropdown-menu multi-column columns-3" style="left: -300px !important;">-->
<!--												            --><?php
//                                                                $row1="";
//                                                                $row2="";
//                                                                $row3="";
//
//                                                                $specification_menu=$this->session->userdata('specification_menu');
//                                                                $i=1;
//                                                                foreach($specification_menu as $row){
//                                                                    $spec='<li><a href="'.$lang_url.'specialist?specification='.str_replace(" ", "+", $row->name).'">'.$row->name.'</a></li>';
//                                                                    if($i==1){
//                                                                    	$row1.=$spec;
//                                                                    }else if($i==2){
//                                                                        $row2.=$spec;
//                                                                    }else if($i==3){
//                                                                        $row3.=$spec;
//                                                                    }
//                                                                    $i++;
//
//                                                                    if($i>3){
//                                                                    	$i=1;
//                                                                    }
//
//                                                                }
//												            ?>
<!--												            <div class="col-sm-4">-->
<!--																<ul class="multi-column-dropdown">-->
<!--																    --><?php //echo $row1; ?>
<!--																</ul>-->
<!--															</div>-->
<!--															<div class="col-sm-4">-->
<!--																<ul class="multi-column-dropdown">-->
<!--																--><?php //echo $row2; ?>
<!--																</ul>-->
<!--															</div>-->
<!--															<div class="col-sm-4">-->
<!--																<ul class="multi-column-dropdown">-->
<!--																--><?php //echo $row3; ?>
<!--																</ul>-->
<!--															</div>-->
<!---->
<!--															-->
<!--											            </ul>-->
<!--										        </li>-->
												<?php if($this->session->userdata('hospital_menu')){ ?>
												<?php $hospital_menu=$this->session->userdata('hospital_menu'); ?>
													
													<li class="dropdown <?php if(isset($active_menu) AND $active_menu=='map') echo 'active'; ?>">
											        	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-hospital-o"></i> &nbsp; <?php echo get_lang('map'); ?><b class="caret"></b></a>
											            <ul class="dropdown-menu multi-column columns-3" style="left: 0px !important;">
												            <?php foreach($hospital_menu as $row){ ?>

																    <ul class="multi-column-dropdown">
																        <li class="header-sub-manu "><a href="<?php echo base_url();?><?php echo $lang; ?>/map?cat=<?php echo str_replace(" ", "+", $row['name']); ?>"><strong><?php echo $row['name']; ?></strong><span class="fa fa-caret-right pull-right"></span></a></li>
																        <?php foreach($row['items'] as $item){ ?>
																			<li class="body-sub-manu "><a href="<?php echo base_url();?><?php echo $lang; ?>/map?cat=<?php echo str_replace(" ", "+", $row['name']); ?>&type=<?php echo str_replace(" ", "+", $item->name); ?>"><?php echo $item->name; ?></a></li>
																		<?php }?>
																    </ul>

															<?php }?>
											            </ul>
										            </li>
												<?php }?>
												
												<li class="<?php if(isset($active_menu) AND $active_menu=='blog') echo 'active'; ?>">
													<a href="#" class="dropdown-toggle" data-toggle="dropdown">
														<i class="fa fa-newspaper-o"></i> &nbsp; <?php echo get_lang('health update'); ?>
													</a>
													<ul class="dropdown-menu"     style="left: -26px !important;">
													<?php foreach($blog_categories as $row){ ?>
														<li><a href="<?php echo base_url();?><?php echo $lang; ?>/blogs?cat=<?=$row->slug?>"><?=$row->name?></a></li>
													<?php } ?>
													</ul>
												</li>
												<li>
													<a href="<?=base_url().$current_change_url?>" style="border-top:none !important">
														<img style="width:20px;" src="<?php echo base_url(); ?>assets/frontend/images/<?php echo $flag; ?>" />
													</a>
												</li>
									        </ul>
									    </div>
									    <!--/.navbar-collapse-->
									</nav>
								</div>
							</div>    
						</div><!--Topbar End-->
				</div>



	
