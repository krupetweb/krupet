			
			   <br><br>
			   
				<table class="table table-bordered datatable limited_drop_targets" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							
							
							<th>Image</th>
							<th> </th>
							
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							   <td><?=$row->en_name?></td>
							   <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
								<td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/<?php echo $term; ?>/form_hospitals?action=update&id_hospital=<?=$row->id?>">
													<i class="entypo-user"></i>View Profile</a>
												</li>
												<li>
													<a href="<?=base_url()?>admin/<?=$term?>/remove_featured/<?=$row->id?>">
													<i class="entypo-pencil"></i>Remove Featured</a>
												</li>
												
											</ul>
										</div>
							   </td>
							</tr>
							<?php $i++?>
						<?php } ?>
                    </tbody>
                </table>
                <?php $page_name="hospitals"; include('data_order.php');?>
				