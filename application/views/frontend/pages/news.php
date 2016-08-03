				<style>
	.ui-autocomplete {
    position: absolute;
    z-index: 1000;
    cursor: default;
    padding: 0;
    margin-top: 2px;
    list-style: none;
    background-color: green;
    border: 1px solid #ccc
    -webkit-border-radius: 5px;
       -moz-border-radius: 5px;
            border-radius: 5px;
    -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
       -moz-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    max-width:50% !important;
}
.ui-autocomplete > li {
  padding: 3px 20px;
  background:white;

}
.ui-autocomplete > li.ui-state-focus {
  background-color: white;
}
.ui-helper-hidden-accessible {
  display: none;
}.input-group-addon{
	cursor:pointer;
}
				</style>
				<?php include('parts/banner.php'); ?>
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>
				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				
					<div class="container">
						<div class="row">
							<div class="col-xs-12 col-sm-9" >
										<div class="container-fluid">
											
											<div class="row">
												<div class="col-xs-12">
													<div class="tags-widget">
                    	
								                        <div class="side-blog-title">
								                        	
								                        	<div class="form-group ui-widget">
															  <div class="input-group">
															  	<?php $tag=isset($_GET['tag']) ? $_GET['tag'] : "";; ?>
															    <input type="text" class="form-control search-control" id="tags" placeholder="<?php echo get_lang('place-a-keyword-here');?>" value="<?php echo $tag; ?>">

															  	<span onclick="search()" class="input-group-addon"><i class="fa fa-search"></i></span>
															  </div>
															</div>
								                        </div>
								                        
								                    </div>
												</div>
											</div>
										</div>
										<div id="search_result_container" class="container-fluid">
										<?php if(is_array($data)){?>	
										
											<?php foreach($data as $row) { ?>
												<div class="row">
													
														<div class="col-xs-12 col-sm-12 col-md-5" >
															<div class="zoom-wrap">
															  <div class="zoom-icon"></div>
																<a  href="<?php echo base_url();?><?php echo $lang;?>/news/<?php echo $row->slug; ?>">
																	<img alt="" data-src=" <?php echo base_url()?><?php echo $row->image ?> " src=" " class="img-responsive">
																</a>
															</div>
														</div>
														<div class="col-xs-12 col-sm-12 col-md-7" >
															<div>
																<div class="blog-box-title blog-box-title-news">
																	<a  href="<?php echo base_url();?><?php echo $lang;?>/news/<?php echo $row->slug; ?>">
																		<?php echo $row->title ?>
																	</a> 
																</div>
																<span  class="post-date"><b><i class="fa fa-calendar"></i>:  <?php echo date_format1($row->created_dt) ?> </b></span>
																<p >
																	<?php echo $row->pre_content ?> 
																</p> 
																
																<a style="float:right"  href="<?php echo base_url();?><?php echo $lang;?>/news/<?php echo $row->slug; ?>"><?php echo get_lang('read more');?> &gt;&gt;</a>
															</div>
														</div>
														
												</div>
												<hr />												
											<?php } ?> 		
										<?php }else echo "Sorry! There is not data to be shown here."; ?> 	
										</div>
								
										<div class="row">
											<div class="col-xs=12">
												<?php echo $links; ?>
											</div>
										</div>
							</div>
										
							<div class="col-xs-12 col-sm-3">
								
								<div class="container-fluid">
									<div class="row">
									<!--:::::::::::::::::::::::::::::::::::::: Aside-->
									<?php include("parts/ads_h.php"); ?>
									</div>
								</div>
							
							</div>
						</div>
						
					</div>
					<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
					<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

					<script>
					  $(function() {
					    var availableTags = [
					    <?php
					      foreach($tags as $row){
					      	echo '"'.$row->name.'",'; 
					      }

					      ?>"health"
					     
					    ];
					    $( "#tags" ).autocomplete({
					      source: availableTags
					    });
					  });

					  function search(){
					  	window.location="<?php echo base_url().$lang; ?>/news?tag="+$( "#tags" ).val();
					  }

					  </script>
				


					