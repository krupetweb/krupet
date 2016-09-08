

				<a href="<?=base_url()?>admin/phone_type_form/create/"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>

			   <br><br>

				<table class="table table-bordered datatable limited_drop_targets" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							<th>Modified Date</th>
							<th>gsdgsdgdfg</th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							   <td><?=$row->en_name?></td>
							   <td><?=$row->modified_dt?></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/phone_type_form/update/<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/phone_type_cud/delete/<?=$row->id?>')">
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
                <?php include('data_order.php');?>