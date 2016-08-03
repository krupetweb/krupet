
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('sent_list_tab.php') ?>
			
			<div class="tab-content">
				<div class="tab-pane active">
						<a href="<?=base_url()?>admin/sent_list_blog_form/create/<?=$id_newsletter?>/0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
			   
							   <br><br>
							   
								<table class="table table-bordered datatable" id="table_export">
									<thead class="text-center">
										<tr>
											<th width="80">#</th>
											<th>Title</th>
											
											<th></th>
										</tr>
									</thead>
									<tbody>
										<?php $i=1; ?>
										<?php foreach($data as $row){ ?>
											<tr>
											   <td><?=$i?></td>
											   <td><?=$row->en_title?></td>
											   <td>
													 <div class="btn-group">
															<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
																Action <span class="caret"></span>
															</button>
															<ul class="dropdown-menu dropdown-default pull-right" role="menu">
																<li>
																	<a href="<?=base_url()?>admin/sent_list_blog_form/update/<?=$id_newsletter?>/<?=$row->id?>">
																	<i class="entypo-pencil"></i>EDIT</a>
																</li>
																<li class="divider"></li>
																<li>
																	<a href="#" onclick="confirm_modal('<?=base_url()?>admin/sent_list_blog_cud/delete/<?=$id_newsletter?>/<?=$row->id?>')">
																	<i class="entypo-trash"></i>DELETE</a>
																</li>
															</ul>
														</div>
											   </td>
											</tr>
										<?php } ?>
									</tbody>
								</table>
							
							
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
