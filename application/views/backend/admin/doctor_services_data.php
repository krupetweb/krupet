<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
												   <td><?=$row->en_name ?></td>
												   <td><?=$row->price?></td>
												   <td><?=$row->modified_dt?></td>
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="#" onclick="get_data_to_edit(<?php echo $row->id?>,<?php echo $id_doctor?>,'<?php echo $row->en_name?>','<?php echo $row->price ?>','<?php echo $row->en_note ?>','<?php echo $row->kh_note ?>')">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/doctor_service_cud/delete/<?=$id_doctor?>/<?=$row->id?>')">
																		<i class="entypo-trash"></i>DELETE</a>
																	</li>
																</ul>
															</div>
												   </td>
												</tr>
												<?php $i++?>
											<?php } ?>