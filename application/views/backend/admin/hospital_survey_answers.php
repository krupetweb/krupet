<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
		<?php 
		include('hospital_survey_tab.php')
		?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Hospital Survey Answer
									</div>
									<a href="<?=base_url()?>admin/hospital_survey_answer_form/create/<?php echo $id_question?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
								</div>
								<div class="panel-body"> 
											   <br><br>
									<table class="table table-bordered datatable" id="table_export">
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Name</th>
												<th>Scrore</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
												   <td><?=$row->en_name ?></td>
												    <td><?=$row->scrore?></td>
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="<?=base_url()?>admin/hospital_survey_answer_form/update/<?=$id_question?>/<?=$row->id?>">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/hospital_survey_answer_cud/delete/<?=$id_question?>/<?=$row->id?>')">
																		<i class="entypo-trash"></i>DELETE</a>
																	</li>
																</ul>
															</div>
												   </td>
												</tr>
												<?php $i++?>
											<?php } ?>
										</tbody>
									</table>
								<</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
