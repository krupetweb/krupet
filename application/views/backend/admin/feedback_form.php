
<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			
			<div class="tab-content">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Feedback Rating Detail
									</div>
									<a href="<?=base_url()?>admin/feedback/"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Back</a>
								</div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$name			='';
										$created_dt		='';
										$review			='';
									
										$button_caption='create';
										
										if(1){
										
											$id				= $data[0]->id;
											$name			= $data[0]->name;
											$created_dt   	= $data[0]->created_dt;
											$review   		= $data[0]->review;
											
											$button_caption='update';
										}
										
									
									?>
								
								
									<?=form_open(base_url().'admin/hospital_gallery_cud/' , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Name', 'name'=>'name', 'value'=>$name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Review', 'name'=>'review', 'value'=>$review, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										inform_field(array('caption'=>'Rating Date', 'value'=>$created_dt))
										
									?>
									<?=form_close()?>
								</div>
								<div class="panel-body">
									<h4>Rating Score</h4>
									<table class="table table-bordered">
										<thead>	
											<th width=5%>No</th>
											<th>Name</th>
											<th>Question</th>
											<th>Score</th>
										</thead>
										<tbody>
											<?php $i=0; $score=0; foreach($data_rating as $row){ ?>
												<tr>
													<td><?php $i++; echo $i; ?></th>
													<td><?php echo $row->en_name; ?></td>
													<td><?php echo $row->en_question; ?></td>
													<td><?php echo $row->score; $score+=$row->score; ?></td>
												</tr>
											<?php } ?>
												<tr>
													<td colspan=3 class="text-right">Total</td>
													<td><?php echo $score; ?></td>
												</tr>
												<tr>
													<td colspan=3 class="text-right">Average</td>
													<td>
														<?php
															if($i!=0){
																echo $score/$i; 
															}
														?>
													</td>
												</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
							
	
	</div>
</div>


		


