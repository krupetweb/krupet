				
			   <br><br>
			   
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
                            <th>Seen</th>
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
							    <td>
									<?php
										if($row->is_seen){
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_health_consultants/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
										}else{
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_health_consultants/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
										}
									?>
							   </td>
							   <td><?=$row->modified_dt;?></td>
							   
								<td class="text-center">
									<a href="<?php base_url()?>health_consultant_form/<?php echo $row->id?>" class="btn btn-primary">
										<i class="entypo-cog" ></i>Edit
									</a> 
								</td>
							</tr>
							<?php $i++?>
						<?php } ?>
                    </tbody>
                </table>