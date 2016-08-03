<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
												   <td><?=$row->en_name ?></td>
												   <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
												   <td><?=$row->modified_dt?></td>
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a  href="#" onclick="get_data_to_edit(<?php echo $row->id?>,<?php echo $id_hospital?>,'<?php echo $row->en_name?>')">
																		<i class="entypo-pencil"></i>EDIT</a>
																	</li>
																	<li>
																		<a  href="<?php echo base_url(); ?>admin/doctor_form/update/<?php echo $row->id_doctor?>">
																		<i class="entypo-user"></i>View Profile</a>
																	</li>
																	<li class="divider"></li>
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/hospital_doctor_cud/delete/<?=$id_hospital?>/<?=$row->id?>')">
																		<i class="entypo-trash"></i>DELETE</a>
																	</li>
																</ul>
															</div>
												   </td>
												</tr>
												<?php $i++?>
											<?php } ?>