
				<table class="table table-bordered datatable">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Rater</th>
							<th>Date</th>
							
							<th></th>
                        </tr>
                    </thead>
                    <tbody id="data_container">
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							   <td><?=$row->created_dt?></td>
								<td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/feedback_form/<?=$row->id?>">
													<i class="entypo-eye"></i>VIEW</a>
												</li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/blog_cud/delete/')">
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
               