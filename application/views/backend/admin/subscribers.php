				
				
			   
			   <br><br>
			   
				<table class="table table-bordered datatable limited_drop_targets" >
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
							<th>Email</th>
							<th>Active</th>
							<th>Created date </th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php if ( !empty($data) ){ ?>
						<?php foreach($data as $row){ ?>
							
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							 
							   <td><?=$row->email?></td>
							   <td>
									<i  onclick="is_active(<?php echo $row->id?>)" style='cursor:not-allowed;' class="glyphicon glyphicon-<?php if($row->is_active) echo 'check'; else echo 'unchecked'; ?>"></i>
								</td>
								<td><?=$row->created_dt?></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/delete_subscriber/<?=$row->id?>')">
													<i class="entypo-trash"></i>DELETE</a>
												</li>
												
											</ul>
										</div>
							   </td>
							</tr>
							<?php $i++?>
						<?php } ?>
						<?php } ?>
                    </tbody>
                </table>
                <div class="col-xs=12">
					<?php echo $links; ?>
				</div>