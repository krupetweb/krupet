				
			   <br><br>
			   
				<table class="table table-bordered datatable" id="">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							<th>Accepted Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php if (is_array($data) || is_object($data)) { ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							   <td><?=$row->accepted_dt;?></td>
							   
								<td class="text-center">
									<a href="<?=base_url()?>admin/<?php echo $term; ?>/form?action=update&id=<?=$row->id?>" class="btn btn-primary">
										<i class="entypo-cog" ></i>Edit
									</a> 
								</td>
							</tr>
							<?php $i++?>
						<?php } ?>
						<?php } ?>
                    </tbody>
                </table>
                <div class="row">
            		<div class="col-xs-12 col-sm-2">
						<select onchange='search()' id="limit" class="form-control">
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
	            	<div class="col-xs-12 col-sm-4">

	            	</div>
            		<div class="col-xs-12 col-sm-6">
            			<nav class="pull-right">
						 	<?php echo $pagination; ?>
						</nav>
            		</div>
	            		
            </div>
            <script type="text/javascript">
        	function search(){
				var url='<?php echo base_url(); ?>admin/<?php echo $term; ?>/accepted?limit='+$('#limit').val();
				window.location=url;
			}
        </script>