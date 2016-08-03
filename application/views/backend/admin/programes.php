				
				
				<a href="<?=base_url()?>admin/programe_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
			   
			   <br><br>
			   
				<table class="table table-bordered datatable limited_drop_targets" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							<th>Image</th>
							<th>Publish</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							   <td><?=$row->en_name?></td>
							   
							   <td>
									<?php
										if($row->is_published){
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_programes/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
										}else{
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_programes/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
										}
									?>
							   </td>
							   <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/programe_form/update/<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/programe_cud/delete/<?=$row->id?>')">
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