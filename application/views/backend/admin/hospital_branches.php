
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
										<i class="entypo-plus-circled"></i>Hospital Branches
									</div>
									<a href="<?=base_url()?>admin/hospital_branch_form/create/<?php echo $id_hospital?>"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
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
												   <td>
												   		<?php if(!$row->is_default){ ?>
															<?php
																if($row->is_published){
																	echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_hospital_branches/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
																}else{
																	echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_hospital_branches/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
																}
															?>
														<?php }else{ ?>
															<i  class="glyphicon glyphicon-check"></i>
														<?php } ?>
												   </td>
												   <td><i id="default_icon_<?php echo $row->id; ?>" onclick="update_default_branch(<?php echo $row->id; ?>, <?php echo $id_hospital; ?>)" class="glyphicon glyphicon-<?php if($row->is_default) echo 'check';else echo 'unchecked';?>"></i></td>
												   <td><?=$row->modified_dt;?></td>
												   
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="<?=base_url()?>admin/hospital_branch_form/update/<?=$id_hospital?>/<?=$row->id?>">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/hospital_branch_cud/delete/<?=$id_hospital?>/<?=$row->id?>')">
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
<script>
	function update_default_branch(id, id_hospital){
		$.ajax({
			url: "<?php echo base_url(); ?>admin/update_default_branch/"+id+"/"+id_hospital,
			success: function(response){
					toastr.success(response);
					window.location="<?php echo base_url(); ?>admin/hospital_branches/"+id_hospital+"/"+id;
			}
		});
	}
</script>
