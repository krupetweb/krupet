
			   <div class="container-fluid">
					<div class="row">
						<div class="col-xs-6">
							<input class="form-control" type="text" onkeyup="search(this.value)" placeholder="Search" />  
						</div>
						<div class="col-xs-6">
								<a href="<?=base_url()?>admin/phamacy_form/create/0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
						</div>
					</div>
			   </div>
			   <br />
				<table class="table table-bordered datatable">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
                            <th>ID</th>
							<th>Publish</th>
							
							<th>Image</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody id="data_container">
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->en_name?></td>
							   <td><?=$row->id?></td>
							   
							   <td>
									<?php
										if($row->is_published){
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_phamacies/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
										}else{
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_phamacies/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
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
													<a href="<?=base_url()?>admin/phamacy_form/update/<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a target="blank" href="<?=base_url()?>en/view-phamacy/<?=$row->slug?>">
													<i class="entypo-eye"></i>VIEW DETAILS</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/phamacy_cud/delete/<?=$row->id?>')">
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
				<div class="col-xs=12">
					<?php echo $links; ?>
				</div>
					<script type="text/javascript">
					//******************************* Search Hospital
					//******************************* Search Hospital
					function search(key) {
						$.ajax({
						  url: "<?php echo base_url() ?>admin/phamacy_search",
						  method:"POST",
						  data:{"key":key}
						}).done(function(respond) {
						  $( "#data_container" ).html( respond );
						});
					}
				</script>
				