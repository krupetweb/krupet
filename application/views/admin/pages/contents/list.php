				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Title</th>
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
							   <td><?=$row->modified_dt;?></td>
								<td class="text-center">
									<a href="<?=base_url()?>admin/<?php echo $term; ?>/form?action=update&id=<?=$row->id?>" class="btn btn-primary">
										<i class="entypo-cog" ></i>Edit
									</a> 
								</td>
							</tr>
							<?php $i++ ?> 
						<?php } ?>
                    </tbody>
                </table>