
			   <div class="container-fluid">
					<div class="row">
						
						<div class="col-xs-12">
								<a href="<?=base_url()?>admin/<?=$term?>/form_hospitals?action=create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
							
						</div>
					</div>
			   </div>
			   <br />
			   <div class="container-fluid">
					<div class="row">
						<div class="col-xs-2">
							From: <input id="from" class="form-control" type="date" value="<?php echo isset($_GET['from'])?$_GET['from']:'';?>"  placeholder="From" />  
						</div>
						<div class="col-xs-2">
							To: <input id="to" class="form-control" type="date" value="<?php echo isset($_GET['to'])?$_GET['to']:'';?>"  placeholder="To" />  
						</div>
						<div class="col-xs-2">
							Province: 
							<select id="province" onchange="get_distrits_province_id(this.value)" class="form-control">
								<?php 
									$first='';
									$other='';
									$province=isset($_GET['province'])?$_GET['province']:0;
									foreach($provinces as $row){ 
										if($province==$row->id){
											$first='<option value="'.$row->id.'">'.$row->name.'</option>';
										}else{
											$others.='<option value="'.$row->id.'">'.$row->name.'</option>';
										}
									}
									echo $first.'<option value="0">Select Province</option>'.$others;
								?>
							</select>  
						</div>
						<div class="col-xs-2">
							Distrit: 
							<select id="distrit" class="form-control">
								<option value="0">Select Distrit</option>
							</select> 
						</div>
						<div class="col-xs-2">
							Category:
							<select id="category" onchange='get_types_category_id(this.value)' class="form-control">
							<?php 
									$first='';
									$others='';
									$category=isset($_GET['category'])?$_GET['category']:0;
									foreach($categories as $row){ 
										if($category==$row->id){
											$first='<option value="'.$row->id.'">'.$row->name.'</option>';
										}else{
											$others.='<option value="'.$row->id.'">'.$row->name.'</option>';
										}
									}
									echo $first.'<option value="0">Select Category</option>'.$others;
							?> 
							
								
							</select> 
						</div>
						<div class="col-xs-2">
							Type: 
							<select id="type" class="form-control">
								<option value="0">Select Type</option>
							</select> 
						</div>
						
					</div>
					<br />
					<?php //print_r($specifications); ?>
					<div class="row">
						<div class="col-xs-3">
							Specification: 
							<select id="specification" class="form-control">
								<?php 
									$first='';
									$othersx='';

									$specification=isset($_GET['specification'])?$_GET['specification']:0;
									foreach($specifications as $row){ 
										if($specification==$row->id){
											$first='<option value="'.$row->id.'">'.$row->name.'</option>';
										}else{
											$othersx.='<option value="'.$row->id.'">'.$row->name.'</option>';
										}
									}
									echo $first.'<option value="0">Select Spec</option>'.$othersx;
								?>
							</select> 
						</div>
						<div class="col-xs-5">
							Name of Hospital: <input id="key" class="form-control" type="text" value="<?php echo isset($_GET['key'])?$_GET['key']:'';?>"  placeholder="Name of hospital" />  
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
						<div class="col-xs-2">
							<br /><button  onclick="search()"  class="btn btn-primary pull-right"><i class='fa fa-search'></i> Search</button> 
						</div>
					</div>
			   </div>
			   <hr />
			   <div class="col-xs=12">
					<?php echo $paginations; ?>
				</div>

				<table class="table table-bordered datatable">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>ID</th>
                            <th>Name</th>
							<th>Publish</th>
							<th>Featured</th>
							<th>Image</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody id="data_container">
						
                    	<?php $i=1; ?>
                    	<?php if(!empty($data)){ ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->id?></td>
							   <td><?=$row->en_name?></td>
							   <td><i id="published_icon_<?php echo $row->id ?>" onclick="is_published(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/publish/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo "check";else echo "unchecked"; ?>"></i></td>
							   <td><i id="featured_icon_<?php echo $row->id ?>" onclick="is_featured(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/feature/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_featured) echo "check";else echo "unchecked"; ?>"></i></td>
							   <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/<?php echo $term; ?>/form_hospitals?action=update&id_hospital=<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a target="blank" href="<?=base_url()?>en/view-hospital/<?=$row->slug?>">
													<i class="entypo-eye"></i>VIEW DETAILS</a>
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
							<?php $i++?>
						<?php } ?>
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
				<script type="text/javascript">
					$(document).ready(function(){
						<?php if($province!=0){ ?>
							get_distrits_province_id(<?php echo $province;?>);
						<?php } ?>
						<?php if($category!=0){ ?>
							get_types_category_id(<?php echo $category;?>);
						<?php } ?>
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
					function get_distrits_province_id(id_province) {
						if(id_province!=0){
							$.ajax({
								url: "<?php echo base_url();?>admin/<?=$term?>/get_distrits_province_id/"+id_province+"?distrit=<?php echo isset($_GET['distrit'])?$_GET['distrit']:'';?>",
								success: function(response){
									$('#distrit').html(response);
								}
							});
						}else{
							$('#distrit').html('<option value=0>Select Distrit</option>');
						}
					}
					function get_types_category_id(id_category) {
						if(id_category!=0){
							$.ajax({
								url: "<?php echo base_url();?>admin/<?=$term?>/get_type_category_id/"+id_category+"?type=<?php echo isset($_GET['type'])?$_GET['type']:'';?>",
								success: function(response){
									$('#type').html(response);
								}
							});
						}else{
							$('#type').html('<option value=0>Select Type</option>');
						}
					}

					function bottom_serach(){
						val=$('#bottom_serach').val();
						$('#limit').val(val);
						search();
					}

					function search(){
						var url='<?php echo base_url(); ?>admin/hospitals?limit='+$('#limit').val();
						if($('#from').val()!='' && $('#to').val()!=''){
							url+='&from='+$('#from').val()+'&to='+$('#to').val();
						}
						if($('#province').val()!=0){
							url+='&province='+$('#province').val();
							if($('#distrit').val()!=0){
								url+='&distrit='+$('#distrit').val();
							}	
						}
						if($('#category').val()!=0){
							url+='&category='+$('#category').val();
							if($('#type').val()!=0){
								url+='&type='+$('#type').val();
							}	
						}
						if($('#key').val()!=''){
							url+='&key='+$('#key').val();
						}
						if($('#specification').val()!=0){
							url+='&specification='+$('#specification').val();
						}
						window.location=url;
					}
				</script>
				