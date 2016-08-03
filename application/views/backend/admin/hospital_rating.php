<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
				include('hospital_tab.php')
			?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Hospital Rating
									</div>
								</div>
								
								<div class="panel-body">
									<table class="table table-bordered datatable" id="table_export">
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Code</th>
												<th>Department</th>
												<th>Comment Visible</th>
												<th>Arrive Date</th>
												<th>Created Date</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
												   <td><?=$row->code?></td>
												   <td><?=$row->department?></td>
												   <td><i id="published_icon_<?php echo $row->id; ?>" onclick="is_published(<?php echo $row->id; ?>, '<?php echo base_url(); ?>admin/update_published_status/tbl_hospital_ratings/<?php echo $row->id; ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo 'check'; else echo 'unchecked'; ?>"></i></td>
												   <td><?=$row->arrived_date?></td>
												   <td><?=$row->created_dt?></td>
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="<?=base_url()?>admin/hospital_rating_form/update/<?=$id_hospital?>/<?=$row->id?>">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/hospital_rating_cud/delete/<?=$id_hospital?>/<?=$row->id?>')">
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
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
