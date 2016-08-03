                <link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/frontend/css/rating.css" id="style-switch" />
				<link rel="stylesheet" type="text/css" href="<?php echo base_url()?>assets/frontend/css/bootstrap-social.css" id="style-switch" />

				<?php include('parts/banner.php'); ?>
				<?php //::::::::::::::::::::::::::::::::::::::::::::::::>> Ads << ?>

				<?php if(isset($ads_v)) include('parts/ads_v.php'); ?>
				<div class="container">
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div>
								<h4>I. <?php echo get_lang('hospital_information');?></h4>
								<div class="form-horizontal">
									<div class="form-group">
									    <label for="inputEmail3" class="col-sm-3 control-label"><?php echo get_lang('hospital_name');?></label>
									    <p class="form-control-static"> &nbsp; <b><?php echo $hospital_name;?></b></p>
									</div>
								  	<div class="form-group">
									    <label  class="col-sm-3 control-label"><?php echo get_lang('department');?></label>
									    <div class="col-sm-9">
									      <select id="id_department" class="form-control search-control" >
									      	<?php foreach($departments as $row){ ?>
									      		<option value="<?php echo $row->id; ?>"><?php echo $row->name; ?></option>
									      	<?php }?>
									      </select>
									    </div>
								    </div>
								    <div class="form-group">
									    <label  class="col-sm-3 control-label"><?php echo get_lang('when_did_you_go_there');?>?</label>
									    <div class="col-sm-9">
									     	<input id="arrived_date" type="date" min="2000-01-02" max="<?php echo date('Y-m-d') ?>" class="form-control search-control" />
									     </div>
								    </div>
								    <?php if($is_rating_code_required){ ?>
								    <div class="form-group">
									    <label  class="col-sm-3 control-label"><?php echo get_lang('your_code');?></label>
									    <div class="col-sm-9">
									     	<input id="code" type="text"   class="form-control search-control" />
									     </div>
								    </div>
								    <?php }else{ ?>
								    	<input id="code" type="hidden" value=""  class="form-control search-control" />
								    <?php } ?>
								</div>

							</div>

							<div>

								<h4>II. <?php echo get_lang('your_rating_optional');?></h4>
								<div class="container-fluid">
									<?php $i=0; foreach($questions as $row) { ?>
										<p>
												<b id="question-<?php echo $i; ?>" data-id="<?php echo $row->id; ?>"><?php echo $row->name ?></b><br />
												<?php echo $row->question;  ?><br />
												<span class="starRating" >
											        <input id="rating-5-<?php echo $i; ?>" type="radio" name="rating-<?php echo $i; ?>" class="rating-<?php echo $i; ?>" value="5" onclick="display_score(<?php echo $i; ?>, 5)">
											        <label for="rating-5-<?php echo $i; ?>">5</label>
											        <input id="rating-4-<?php echo $i; ?>" type="radio" name="rating-<?php echo $i; ?>" class="rating-<?php echo $i; ?>" value="4" onclick="display_score(<?php echo $i; ?>, 4)">
											        <label for="rating-4-<?php echo $i; ?>">4</label>
											        <input id="rating-3-<?php echo $i; ?>" type="radio" name="rating-<?php echo $i; ?>" class="rating-<?php echo $i; ?>" value="3" onclick="display_score(<?php echo $i; ?>, 3)">
											        <label for="rating-3-<?php echo $i; ?>">3</label>
											        <input id="rating-2-<?php echo $i; ?>" type="radio" name="rating-<?php echo $i; ?>" class="rating-<?php echo $i; ?>" value="2" onclick="display_score(<?php echo $i; ?>, 2)">
											        <label for="rating-2-<?php echo $i; ?>">2</label>
											        <input id="rating-1-<?php echo $i; ?>" type="radio" name="rating-<?php echo $i; ?>" class="rating-<?php echo $i; ?>" value="1" onclick="display_score(<?php echo $i; ?>, 1)">
											        <label for="rating-1-<?php echo $i; ?>">1</label>
										      	</span>
										      	<span id="scoring-<?php echo $i; ?>" class="scoring-visible"></span>
										</p>
										<hr />
									<?php $i++; } ?>

								</div>

							</div>

							<div>

								<h4>III. <?php echo get_lang('recommendation');?></h4>
								<div class="container-fluid">
										<p>
												<b id="question-<?php echo $i; ?>" data-id="0"><?php echo get_lang('remcommend_to');?></b><br />

												<?php echo get_lang('how_likely_are_you_to_recommend');?><br />
												<label class="radio-inline">
												  <input type="radio" name="is_recommended" class="recommended" id="is_recommended1" value="1"> Yes
												</label>
												<label class="radio-inline">
												  <input type="radio" name="is_recommended" class="recommended" id="is_recommended0" value="0"> No
												</label>
										</p>
										<hr />
										<p>
											<b><?php echo get_lang('your_review');?></b> <span style="float:right"><i>(<?php echo get_lang('max_charators');?>)</i></span>

											<div class="form-horizontal">

												<div class="form-group">

													<textarea id="review" class="form-control search-control" style="color:black;" placeholder="<?php echo get_lang('your_opinion');?>..."></textarea>

												 </div>

												 <div class="form-group">

													<button onclick="submit_rating()" class="btn btn-default" style="float:right"><?php echo get_lang('submit');?></button>

												 </div>

											</div>
										</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">

							<div class="container-fluid">

								<div class="row">

									<?php include("parts/ads_h.php"); ?>	

								</div>

							</div>

						

						</div>

					</div>

					<br />

				</div>



				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">

				  <div class="modal-dialog" role="document">

				    <div class="modal-content" style="margin-top: 150px;">

				      <div class="modal-header">

				        <button type="button" onclick="hide_modal()" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>

				        <h4 class="modal-title" id="myModalLabel"><?php echo get_lang('information');?></h4>

				      </div>

				      <div class="modal-body" >

				        	<h4 id="modal-body">

				        		<img src="<?php echo base_url(); ?>assets/frontend/images/loader.gif" style="width:50px" />  Wating respond....

				        	</h4>

				      </div>

				      <div class="modal-footer">

				        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="hide_modal()">OK</button>

				      </div>

				    </div>

				  </div>

				</div>



				<div class="modal fade" id="confirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content" style="margin-top: 150px;">
				      <div class="modal-header">
				        <button type="button" onclick="hide_modal()" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				        <h4 class="modal-title" id="myModalLabel"><?php echo get_lang('rating-requirment');?></h4>
				      </div>
				      <div class="modal-body" >
				        	<p>
				        		<?php echo get_lang('rating-instruction');?>
				        	</p>

				        	<a class="btn btn-block btn-social btn-facebook" id="fb-login">
					            <span class="fa fa-facebook"></span> <?php echo get_lang('rate-with-fb');?>
					         </a>
				      </div>

				       <div class="modal-footer">

				        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="hide_modal()"><?php echo get_lang('cancel');?></button>

				      </div>
				    </div>

				  </div>

				</div>
				<script>
                    function display_score(i, score){
						var caption=['<?php echo get_lang("very-bad");?>', '<?php echo get_lang("bad");?>', '<?php echo get_lang("fair");?>', '<?php echo get_lang("good");?>', '<?php echo get_lang("very-good");?>'];
						score=score-1;
						$("#scoring-"+i).html(caption[score]);
					}

					function display_score_recommend(score){
						var caption=['Not Very Recommend', 'Not Recommend', 'Recommend', 'About to Recommend', 'Highly Recommend'];
						score=score-1;
						$("#scoring").html(caption[score]);
					}
				
					function submit_rating(){
						<?php if($is_rating_code_required){ ?>
							if($("#code").val()!=""){
						<?php } ?>

								if($("#arrived_date").val()!=""){
									id_hospital=<?php echo $id_hospital; ?>;
									id_department=$("#id_department").val();
									arrived_date=$("#arrived_date").val();
									code=$("#code").val();
									review=$("#review").val();
									is_recommended=0;
									if($("#is_recommended1").is(':checked')){
										is_recommended=1;
									}

									var data_score=	[];

									for (var i = 0; i < <?php echo sizeof($questions); ?>; i++) {
									    var id_question=$("#question-"+i).attr("data-id");
									    var score=0;

									    if($("input[type='radio'].rating-"+i).is(':checked')) {
										    score = $("input[type='radio'].rating-"+i+":checked").val();
										}

									    data_score.push({
									        "id_question": id_question,
									        "score": score
									    });
									}

									var obj_data={
												"id_hospital":id_hospital,
												"id_department":id_department,
												"arrived_date":arrived_date,
												"user_data":user_data, 
												"code":code,
												"review":review, 
												"is_recommended":is_recommended,
												"data_score": data_score
											};
									var data=JSON.stringify(obj_data);
                                    
                                    if(is_logged_to_fb==1 && is_logged_to_app==1){
                                        $.ajax({
									    url: "<?php echo base_url(); ?>/submit-hospital-rating",
									       method:"POST", 
									       data: {"data": data}
									    }).done(function(respond) {
									  	  show_modal(respond);
									    });
                                    }else{
                                    	back_to_view_hospital();
                                    }
								}else{
									show_modal("<?php echo get_lang('enter-arrived-date');?>");
								}
						<?php if($is_rating_code_required){ ?>
							}else{
								show_modal("<?php echo get_lang('enter-your-code');?>");
							}
						<?php }?>
					}
					function show_modal(msg){
						$('#myModal').modal('show');
						$('#modal-body').html(msg);
					}
					function hide_modal(){
						$('#modal-body').html('<img src="<?php echo base_url(); ?>assets/frontend/images/loader.gif" style="width:50px" />  Wating respond....');	
					}
				</script>

				<script>
				    /*:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Facebook process*/
					var is_logged_to_fb=0;
					var is_logged_to_app=0;
					var is_not_logged=1;
					var status="undefined";
					var user_data='';
					$(document).ready(function(){
						$('#confirmModal').modal('show');

						$("#fb-login").click(function(){
			           		 FB.login(function(response) {
			  					statusChangeCallback(response)
			 				}, {scope: 'public_profile, email'});
						});



						$('#confirmModal').on('hidden.bs.modal', function (e) {
							if(status=="undefined"){
								back_to_view_hospital();
							}
						}); 
					});

					function back_to_view_hospital(){
						window.location="<?php echo base_url().$lang; ?>/view-hospital/<?php echo $slug; ?>"
					}

						function statusChangeCallback(response) {
							if (response.status === 'connected') {
								get_user_information();
							} else if (response.status === 'not_authorized') {
								$('#confirmModal').modal('show');
							} else {
							}
						}

					  
						  function checkLoginState() {
							FB.getLoginStatus(function(response) {
							  statusChangeCallback(response);
							});
						  }
						window.fbAsyncInit = function() {
							FB.init({
								appId      : '710665712402031',
								cookie     : true,  
								xfbml      : true,  
								version    : 'v2.5' 
							});
							checkLoginState();

						};

					 
					  function get_user_information() {
					    FB.api('/me', { locale: 'en_US', fields: 'name, email, gender, picture' }, function(response) {
					     	user_data=JSON.stringify(response);
					     	is_logged_to_fb=1;
							is_logged_to_app=1;
							is_not_logged=0;
							status="connected";
							$('#confirmModal').modal('hide');
					    });
					  }
				</script>

