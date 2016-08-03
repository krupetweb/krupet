
<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php  include('hospital_tab.php') ?>
			
			
			<div class="tab-content">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Hospital Rating Detail
									</div>
									<a href="<?=base_url()?>admin/hospital_rating/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Back</a>
								</div>
								<div class="panel-body">
									<?php
										
										$id				=0;
										$code			='';
										$department		='';
										$arrived_date	='';
										$review			='';
										$created_dt		='';
										$is_recommended=0;
									
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data[0]->id;
											$code			= $data[0]->code;
											$is_recommended	= $data[0]->is_recommended;
											$department		= $data[0]->department;
											$arrived_date	= $data[0]->arrived_date;
											$review   		= $data[0]->review;
											$created_dt   	= $data[0]->created_dt;
											
											$button_caption='update';
										}
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_gallery_cud/'.$action.'/'.$id_hospital.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Code', 'name'=>'code', 'value'=>$code, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Department', 'name'=>'department', 'value'=>$department, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										textarea_field(array('caption'=>'Review', 'name'=>'review', 'value'=>$review, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										boolean_field(array('caption'=>'Recommendation', 'name'=>'is_published', 'value'=>$is_recommended, 'id'=>$id));
										inform_field(array('caption'=>'Rating Date', 'value'=>$created_dt))
										
										//button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_gallery_cud/delete/'.$id_hospital.'/'.$id));
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
													<td><?php echo $row->name; ?></td>
													<td><?php echo $row->question; ?></td>
													<td><?php echo $row->score; $score+=$row->score; ?></td>
												</tr>
											<?php } ?>
												<tr>
													<td colspan=3 class="text-right">Total</td>
													<td><?php echo $score; ?></td>
												</tr>
												<tr>
													<td colspan=3 class="text-right">Average</td>
													<td><?php echo $score/$i; ?></td>
												</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
							
	
	</div>
</div>


		


