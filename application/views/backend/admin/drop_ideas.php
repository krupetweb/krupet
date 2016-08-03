				
			   <br><br>
			   
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
							   <td><?=$row->name?></td>
							   <td><?=$row->modified_dt;?></td>
							   
								<td class="text-center">
									<a href="<?php base_url()?>drop_idea_form/<?php echo $row->id?>" class="btn btn-primary">
										<i class="entypo-cog" ></i>Edit
									</a> 
								</td>
							</tr>
							<?php $i++?>
						<?php } ?>
                    </tbody>
                </table>