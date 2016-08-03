 				<div class="container-fluid">
					<div class="row">
						<div class="col-xs-6">
							<input class="form-control" type="text" onkeyup="search(this.value)" placeholder="Search" />  
						</div>
						<div class="col-xs-6">
								<a href="<?=base_url()?>admin/blog_form/create/<?php echo $id_category ?>/0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
						</div>
					</div>
			   </div>
			   <br />
				<table class="table table-bordered datatable">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Title</th>
							<th>Published</th>
							<th>Feature</th>
							<th>Special</th>
							<th>Image</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody id="data_container">
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr data-id="<?php echo $row->id;?>" >
							   <td><?=$i?></td>
							   <td><?=$row->en_title?></td>
							    <td>
									<?php
										if($row->is_published){
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_blogs/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
										}else{
											echo '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_blogs/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
										}
									?>
							   </td>
							    <td>
									<i id="featured_icon_<?php echo $row->id?>" onclick="is_featured(<?php echo $row->id?>, '<?php echo base_url()?>admin/update_featured_status_of_blog')" class="glyphicon glyphicon-<?php if($row->is_featured) echo 'check'; else echo 'unchecked'; ?>"></i>
								</td>
								<td>
									<i id="specialed_icon_<?php echo $row->id?>" onclick="is_specialed(<?php echo $row->id?>, '<?php echo base_url()?>admin/update_specialed_status_of_blog')" class="glyphicon glyphicon-<?php if($row->is_specialed) echo 'check'; else echo 'unchecked'; ?>"></i>
								</td>
							   <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/blog_form/update/<?=$row->id_category?>/<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<?php if ($id_category==1){
														$blog='tip';
													}else{
														$blog='news';
													} ?>
													<a target="blank" href="<?=base_url()?>en/<?= $blog ?>-detail/<?=$row->slug?>">
													<i class="entypo-pencil"></i>VIEW DETAIL</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/blog_cud/delete/<?=$row->id_category?>/<?=$row->id?>')">
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
                <script type="text/javascript">
					
					function is_featured(id, url){
						
						val=0;
						featured_icon=$("#featured_icon_"+id);
						
						if(featured_icon.hasClass("glyphicon-check")){
							
							featured_icon.removeClass("glyphicon-check");
							featured_icon.addClass("glyphicon-unchecked");
							message="This data is set to be unpublished.";
							val=0;
							
						}else{
							
							featured_icon.removeClass("glyphicon-unchecked");
							featured_icon.addClass("glyphicon-check");
							message="This data is set to be published.";
							val=1;
						}
						
						$.ajax({
							url: url+"/"+id+"/"+val,
							success: function(response)
							{
								//infomation_modal(message);
								toastr.success(message);
							}
						});
					}
					function is_specialed(id, url){
						
						val=0;
						specialed_icon=$("#specialed_icon_"+id);
						
						if(specialed_icon.hasClass("glyphicon-check")){
							
							specialed_icon.removeClass("glyphicon-check");
							specialed_icon.addClass("glyphicon-unchecked");
							message="This blog is removed from specailed.";
							val=0;
							
						}else{
							
							specialed_icon.removeClass("glyphicon-unchecked");
							specialed_icon.addClass("glyphicon-check");
							message="This data is set to be specailed.";
							val=1;
						}
						
						$.ajax({
							url: url+"/"+id+"/"+val,
							success: function(response)
							{
								//infomation_modal(message);
								toastr.success(message);
							}
						});
					}
					//******************************* Search Blog
					function search(key) {
						$.ajax({
						  url: "<?php echo base_url() ?>admin/blog_search",
						  method:"POST",
						  data:{"key":key, 'id_category':<?php echo $id_category; ?>}
						}).done(function(respond) {
						  $( "#data_container" ).html( respond );
						});
					}
				</script>