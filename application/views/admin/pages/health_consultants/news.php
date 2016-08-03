				
			   <br><br>
			   
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
                            <th>Seen</th>
							<th>Created Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							    <td style='cursor:not-allowed;'>
									<?php
										if($row->is_seen){
											echo '<i id="published_icon_'.$row->id.'" style="cursor:not-allowed;" " onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_health_consultants/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
										}else{
											echo '<i id="published_icon_'.$row->id.'" style="cursor:not-allowed;" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_health_consultants/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
										}
									?>
							   </td>
							   <td><?=$row->created_dt;?></td>
							   
								 <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/<?php echo $term; ?>/form?action=update&id=<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="<?=base_url()?>admin/<?=$term?>/update_acepted?id=<?=$row->id?>">
													<i class="entypo-trash"></i>Accepted</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/<?=$term?>/delete_health_consultant?id=<?=$row->id?>')">
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