<div class="container-fluid">	
			<div class="row">
				
				<div class="col-xs-12 col-sm-3">
					From: <input id="from" class="form-control" type="date" value="<?php echo isset($_GET['from'])?$_GET['from']:'';?>"  placeholder="From" />  
				</div>
				<div class="col-xs-12 col-sm-3">
					To: <input id="to" class="form-control" type="date" value="<?php echo isset($_GET['to'])?$_GET['to']:'';?>"  placeholder="To" />  
				</div>
				<div class="col-xs-12 col-sm-3">
					Name of <?php echo $term; ?>: <input id="key" class="form-control" type="text" value="<?php echo isset($_GET['key'])?$_GET['key']:'';?>"  placeholder="Name of <?php echo $term; ?>" />  
				</div>
				<div class="col-xs-12 col-sm-2">
					
				</div>
				
				<div class="col-xs-12 col-sm-3">
					<br />
					<button onclick="search()"  class="btn btn-primary "><i class='fa fa-search'></i> Search</button> &nbsp;
					<a href="<?=base_url()?>admin/<?=$term?>/form_partner?action=create"  class="btn btn-primary "><i class="entypo-plus-circled"></i>Add New </a> 
				</div>
				<div class="col-xs-2">
							Type: 
							<select id="type" class="form-control">
								<option value="0">Select Type</option>
								<option value="1">Potential Partners</option>
								<option value="2">Official Sponsors</option>
							</select> 
				</div>
			</div>
		</div>
		<hr />				
				
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
                            <th>Published</th>
                            <th>Image</th>
							<th>Modified Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							  <td><i id="published_icon_<?php echo $row->id ?>" onclick="is_published(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/publish/tbl_<?=$term?>/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo "check";else echo "unchecked"; ?>"></i></td>
							    <td><img src="<?=base_url().$row->image?>" class="img img-responsive thumbnail" /></td>
							   <td><?=$row->modified_dt;?></td>
								<td class="text-center">
									<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/<?php echo $term; ?>/form_partner?action=update&id_partner=<?=$row->id?>">
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
							<?php $i++ ?>
						<?php } ?>
                    </tbody>
                </table>
                <div class="row">
            		<div class="col-xs-12 col-sm-2">
						<select onchange='search()' id="limit" class="form-control">
								<?php 
									$limit=isset($_GET['limit'])?$_GET['limit']:10;
									$array_limit=array(5, 6, 10 , 70, 80, 90, 100);
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
	            	<div class="col-xs-12 col-sm-4">

	            	</div>
            		<div class="col-xs-12 col-sm-6">
            			<nav class="pull-right">
						 	<?php echo $pagination; ?>
						</nav>
            		</div>
	            		
            </div>
        </div>
        <script type="text/javascript">
        	function search(){
        			
				var url='<?php echo base_url(); ?>admin/<?php echo $term; ?>?limit='+$('#limit').val();
				if($('#from').val()!='' && $('#to').val()!=''){
					url+='&from='+$('#from').val()+'&to='+$('#to').val();
				}
				
				if($('#key').val()!=''){
					url+='&key='+$('#key').val();
				}
				if($('#type').val()!=0){
							url+='&type='+$('#type').val();
							if($('#type').val()!=0){
								url+='&type='+$('#type').val();
							}	
						}
				
				window.location=url;
			}
        </script>