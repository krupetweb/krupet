					<?php 
						$p1='';
							$p2='';
							$p3='';
							$p4='';
						if(!empty($data)){
							
                            $j=0;
							foreach($data as $row){
								$j++;
								$str='<li><i class="fa fa-phone about-list-arrows"></i> <a href="tel:'.$row->phone.'">'.$row->name.': <br /><b>'.$row->phone.'</b></a></li>';
							    if($j==1){
                                     $p1.=$str;
								}else if($j==2){
                                     $p2.=$str;
								}else if($j==3){
                                     $p3.=$str;
								}else if($j==4){
                                     $p4.=$str;
                                     $j=0;
								}

							}

						}else{
							echo '<div class="col-xs-12"><h4>Sorry! No data is found.</h4></div>';
						}

					?>
					<?php  if(!empty($data)){?>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
						<div class="intro-content-wrap elemnts-wrap col-md-12 typopraphy-elements no-pad">
						    <ul>
						        <?php echo $p1 ;?>
						    </ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
						<div class="intro-content-wrap elemnts-wrap col-md-12 typopraphy-elements no-pad">
						    <ul>
						        <?php echo $p2 ;?>
						    </ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
						<div class="intro-content-wrap elemnts-wrap col-md-12 typopraphy-elements no-pad">
						    <ul>
						         <?php echo $p3 ;?>
						    </ul>
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
						<div class="intro-content-wrap elemnts-wrap col-md-12 typopraphy-elements no-pad">
						    <ul>
						        <?php echo $p4 ;?>
						    </ul>
						</div>
					</div>
					
					<?php } ?>
					