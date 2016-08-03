				<div class="container-fluid">
					<div class="row">
						
						<div class="col-xs-12">
								<a href="<?=base_url()?>admin/<?=$term?>/form_projects?action=create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
							
							
						</div>
					</div>
			   </div>
			   <br />
			   <div class="container-fluid">
					<div class="row">
						<div class="col-xs-3">
							From: <input id="from" class="form-control" type="date" value="<?php echo isset($_GET['from'])?$_GET['from']:'';?>"  placeholder="From" />  
						</div>
						<div class="col-xs-3">
							To: <input id="to" class="form-control" type="date" value="<?php echo isset($_GET['to'])?$_GET['to']:'';?>"  placeholder="To" />  
						</div>
						<div class="col-xs-3">
							Name of Hospital: <input id="key" class="form-control" type="text" value="<?php echo isset($_GET['key'])?$_GET['key']:'';?>"  placeholder="Name of doctor" />  
						</div>
						<div class="col-xs-2">
							Shown per page: 
							<select id="limit" class="form-control">
								<?php 
									$limit=isset($_GET['limit'])?$_GET['limit']:10;
									$array_limit=array(10, 20, 30, 40, 50, 60, 70, 80, 90, 100);
									$first='';
									$others='';
									foreach($array_limit as $item){
										if($limit==$item){
											$first='<option value="'.$item.'">'.$item.'</option>';
										}else{
											$others.='<option value="'.$item.'">'.$item.'</option>';
										}
									}
									echo $first.$others;
								?>
							</select> 
						</div>
						<div class="col-xs-1">
							<br /><button  onclick="search()"  class="btn btn-primary pull-right"><i class='fa fa-search'></i> Search</button> 
						</div>
					</div>
					<br />
			   </div>
			   </br>
			   <?php if(!empty($data)){ ?>
					<table class="table table-bordered">
	                    <thead class="text-center">
	                        <tr>
	                            <th width="80">#</th>
	                            <th>Name</th>
	                            <th>Published</th>
								<th>Image</th>
								<th></th>
	                        </tr>
	                    </thead>
	                    <tbody>
							<?php $i=1; ?>
							<?php foreach($data as $row){ ?>
								<tr>
								   <td><?=$i?></td>
								   <td><?=$row->name?></td>
								   	<td><i id="published_icon_<?php echo $row->id ?>" onclick="is_published(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/publish/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo "check";else echo "unchecked"; ?>"></i></td>
								   	<td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
								   	<td class="text-center">
										<div class="btn-group">
												<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
													Action <span class="caret"></span>
												</button>
												<ul class="dropdown-menu dropdown-default pull-right" role="menu">
													<li>
														<a href="<?=base_url()?>admin/<?php echo $term; ?>/form/update/<?=$row->id?>">
														<i class="entypo-pencil"></i>EDIT</a>
													</li>
													<li class="divider"></li>
													<li>
														<a href="#" onclick="confirm_modal('<?=base_url()?>admin/<?=$term?>/delete/<?=$row->id?>')">
														<i class="entypo-trash"></i>DELETE</a>
													</li>
												</ul>
											</div>
									</td>
								</tr>
							<?php } ?>
	                    </tbody>
	                </table>
	                <div class="row">
            		<div class="col-xs-12 col-sm-2">
						<select id="bottom_serach" onchange='bottom_serach()' id="limit" class="form-control">
								<?php 
									$limit=isset($_GET['limit'])?$_GET['limit']:10;
									$array_limit=array(10, 20, 30, 40, 50, 60, 70, 80, 90, 100);
									$first='';
									$others='';
									for($i=0; $i<count($array_limit); $i++){
										
										if($limit==$array_limit[$i]){
											$first='<option value="'.$array_limit[$i].'">'.$array_limit[$i].'</option>';
										}else{
											$others.='<option value="'.$array_limit[$i].'">'.$array_limit[$i].'</option>';
										}
									}
									echo $first.$others;
								?>
						</select>  
	            	</div>
	            	<div class="col-xs-12 col-sm-4">

	            	</div>
            		<div class="col-xs-12 col-sm-6">
            			<nav class="pull-right">
						 	<?php echo $paginations; ?>
						</nav>
            		</div>
	            		
            	</div>
                <?php }else{ ?>
                     <div>Sorry! There is no data. </div>
                <?php } ?>

               
				<script type="text/javascript">
					$(document).ready(function(){
						
					});
					
					function is_featured(id, url){
						
						val=0;
						featured_icon=$("#featured_icon_"+id);
						
						if(featured_icon.hasClass("glyphicon-check")){
							
							featured_icon.removeClass("glyphicon-check");
							featured_icon.addClass("glyphicon-unchecked");
							message="This data is set to be unfeatured.";
							val=0;
							
						}else{
							
							featured_icon.removeClass("glyphicon-unchecked");
							featured_icon.addClass("glyphicon-check");
							message="This data is set to be featured.";
							val=1;
						}
						
						$.ajax({
							url: url+"/"+id+"/"+val,
							success: function(response){
								toastr.success(message);
							}
						});
					}

					function bottom_serach(){
						val=$('#bottom_serach').val();
						$('#limit').val(val);
						search();
					}
					function search(){
						var url='<?php echo base_url(); ?>admin/projects?limit='+$('#limit').val();
						if($('#from').val()!='' && $('#to').val()!=''){
							url+='&from='+$('#from').val()+'&to='+$('#to').val();
						}
					
						if($('#key').val()!=''){
							url+='&key='+$('#key').val();
						}
						
						window.location=url;
					}
				</script>