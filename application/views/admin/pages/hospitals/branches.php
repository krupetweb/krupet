
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
										<i class="entypo-plus-circled"></i><?=ucfirst($term)?> -> <?=ucwords(str_replace('_', ' ', $page))?>
									</div>
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_branches?action=create&id_hospital=<?=$id_hospital?>&id_branch=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
								</div>
								<div class="panel-body"> 
											   
									<table class="table table-bordered datatable" id="table_export">
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Name</th>
												<th>Publish</th>
												<th>Default</th>
												<th>Modified Date</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
												   <td><?=$row->en_name?></td>
												    <td><i id="published_icon_<?php echo $row->id ?>" onclick="is_published(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/publish/tbl_hospital_branches/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo "check";else echo "unchecked"; ?>"></i></td>
												   <td>
									                  <i  onclick="is_default(<?php echo $id_hospital?> , <?php echo $row->id ?>)" class="glyphicon glyphicon-<?php if($row->is_default) echo 'check'; else echo 'unchecked'; ?>"></i>
								                    </td>
												   <td><?=$row->modified_dt;?></td>
												   
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="<?=base_url()?>admin/<?=$term?>/form_branches?action=update&id_hospital=<?=$id_hospital?>&id_branch=<?=$row->id?>">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/<?=$term?>/delete_branch?id_hospital=<?=$id_hospital?>&id_branch=<?=$row->id?>')">
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
					
	function is_default(id_hospital, id_branch){
		window.location="<?php echo base_url(); ?>admin/hospitals/update_default_status_of_branches?id_hospital="+id_hospital+"&id_branch="+id_branch;
	}
	
	
</script>
