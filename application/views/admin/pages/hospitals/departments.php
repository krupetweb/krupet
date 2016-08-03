
<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			<?php include('tab.php');?>
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i><?=ucfirst($term)?> -> <?=ucfirst($page)?>
									</div>
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_departments?action=create&id_hospital=<?=$id_hospital?>&id_department=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
								</div>
								<div class="panel-body"> 
											   
									<table class="table table-bordered datatable" id="table_export">
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Name</th>
												<th>Modified Date</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
                                                   <td><?=$row->name?></td>
												    
												   <td><?=$row->modified_dt;?></td>
												   
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="<?=base_url()?>admin/<?=$term?>/form_departments?action=update&id_hospital=<?=$id_hospital?>&id_department=<?=$row->id?>">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/<?=$term?>/delete_department?id_hospital=<?=$id_hospital?>&id_department=<?=$row->id?>')">
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
<script type="text/javascript">		
	function is_default(id_hospital, id){
		window.location="<?php echo base_url(); ?>admin/hospitals/update_default_status_of_branches/"+id_hospital;
	}
</script>
