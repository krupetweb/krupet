				
			   <br><br>
			   
				<table class="table table-bordered datatable" id="">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							<th>Accepted Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php if (is_array($data) || is_object($data)) { ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							   <td><?=$row->accepted_dt;?></td>
							   
								<td class="text-center">
									<a href="<?php base_url()?>health_consultant_form/<?php echo $row->id?>" class="btn btn-primary">
										<i class="entypo-cog" ></i>Edit
									</a> 
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