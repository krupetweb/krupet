				<a href="<?=base_url()?>admin/<?php echo $term; ?>/form?action=create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
			   <br><br>
			   
				<table class="table table-bordered datatable limited_drop_targets" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							<th>Image</th>
							<th>Publish</th>
							<th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							   <td><?=$row->en_name?></td>
							 	<td><img width="50px" height="50px" src="<?=base_url()?><?=$row->image?>"</td>
							  <td><i id="published_icon_<?php echo $row->id ?>" onclick="is_published(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/publish/tbl_<?=$term?>/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo "check";else echo "unchecked"; ?>"></i></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/<?php echo $term; ?>/form?action=update&id=<?=$row->id?>">
													<i class="glyphicon glyphicon-book"></i>  View</a>
												</li>
												<li>
													<a href="<?=base_url()?>admin/remove_special_blog/<?=$row->id?>">
													<i class="entypo-pencil"></i>Remove</a>
												</li>
												
											</ul>
										</div>
							   </td>
							</tr>
							<?php $i++?>
						<?php } ?>
                    </tbody>
                </table>