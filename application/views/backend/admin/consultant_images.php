				
				
				<a href="<?=base_url()?>admin/consultant_image_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
			   
			   <br><br>
			   
				<table class="table table-bordered datatable limited_drop_targets" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
							<th>Image</th>
							<th>Active</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							 
							   <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
							    <td>
									<i  onclick="is_active(<?php echo $row->id?>)" class="glyphicon glyphicon-<?php if($row->is_active) echo 'check'; else echo 'unchecked'; ?>"></i>
								</td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/consultant_image_form/update/<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<?php if ($row->is_active==1){?>
												<li class="divider"></li>
												<?php }else{?>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/consultant_image_cud/delete/<?=$row->id?>')">
													<i class="entypo-trash"></i>DELETE</a>
												</li>
												<?php } ?>
											</ul>
										</div>
							   </td>
							</tr>
							<?php $i++?>
						<?php } ?>
                    </tbody>
                </table>
                <?php include('data_order.php');?>
                 <script type="text/javascript">
					
					function is_active(id){
						window.location="<?php echo base_url(); ?>admin/update_active_status_of_consultant_image/"+id;
					}
					
					
				</script>