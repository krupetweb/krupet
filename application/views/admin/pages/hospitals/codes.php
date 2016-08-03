
<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			<?php include('tab.php');?>
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i><?=ucfirst($term)?> -> <?=ucfirst($page)?>
									</div>
									<a href="<?=base_url()?>admin/<?php echo $term ?>/form_codes?action=create&id_hospital=<?=$id_hospital?>&id_code=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a>
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
						<div class="col-xs-4 type">
						    Sort type: <br />
							<label class="radio-inline">
                                <input type="radio" name="type" id="type-all" value="all" <?php if(isset($_GET['type'])){ if($_GET['type']=='all'){echo 'checked';}}else{echo 'checked';} ?> > All
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="type" id="type-rated" value="rated" <?php if(isset($_GET['type'])){ if($_GET['type']=='rated'){echo 'checked';}} ?> > Rated
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="type" id="type-not-rated" value="not_rated" <?php if(isset($_GET['type'])){ if($_GET['type']=='not_rated'){echo 'checked';}} ?> > Not Rated
                            </label>
						</div>
						<div class="col-xs-1">
							<br /><button  onclick="search()"  class="btn btn-primary pull-right"><i class='fa fa-search'></i> Search</button> 
						</div>
						
					</div>
					<br />
								<div class="panel-body"> 
											   
									<table class="table table-bordered ">
										<thead class="text-center">
											<tr>
												<th width="80">#</th>
												<th>Code</th>
												<th>Active</th>
												<th>Create Date</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<?php $i=1; ?>
											<?php foreach($data as $row){ ?>
												<tr>
												   <td><?=$i?></td>
                                                   <td><?=$row->code?></td>
                                                   <td>
														<i class="glyphicon glyphicon-<?php if($row->is_active) echo 'check'; else echo 'unchecked'; ?>"></i>
												   </td>
												   <td><?=$row->created_dt?></td>
												   <td>
														 <div class="btn-group">
																<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																	Action <span class="caret"></span>
																</button>
																<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																	<li>
																		<a href="#" onclick="confirm_modal('<?=base_url()?>admin/<?=$term?>/delete_code?id_hospital=<?=$id_hospital?>&id_code=<?=$row->id?>')">
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
									  <div class="row">
            		<div class="col-xs-12 col-sm-2">
						<select id="limit"  onchange='search()' class="form-control">
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
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
<script type="text/javascript">		
	
					function search(){
						type=$('.type input[type="radio"]:checked:first').val();
						var url='<?php echo base_url(); ?>admin/<?=$term?>/codes?id_hospital=<?=$id_hospital?>&limit='+$('#limit').val()+'&type='+type;
						if($('#from').val()!='' && $('#to').val()!=''){
							url+='&from='+$('#from').val()+'&to='+$('#to').val();
						}
						
						window.location=url;
					}
</script>
