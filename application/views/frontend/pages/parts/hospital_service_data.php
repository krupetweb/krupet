															<?php $i=1;?>
																<?php foreach($data as $row){ ?>
																	 <tr>
																	 	<td><?php echo $i; $i++?></td>
																	 	<td><?php echo $row->service ?></td>
																	 	<td><?php echo $row->price ?></td>
																	 	<td><?php echo $row->note; ?></td>
																	 </tr>
															<?php }?>