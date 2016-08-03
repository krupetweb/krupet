				<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('tab.php') ?>
			
			<div class="tab-content">
				<div class="tab-pane active">
				<a href="<?=base_url()?>admin/<?=$term?>/form_distrits?action=create&id_province=<?=$id_province?>&id_distrit=0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
				<br/>
				<br/>
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
                            <th>Published</th>
                            <th>Modified Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->en_name?></td>
							     <td><i id="published_icon_<?php echo $row->id ?>" onclick="is_published(<?php echo $row->id ?>, '<?php echo base_url()?>admin/<?=$term?>/publish/<?php echo $row->id ?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo "check";else echo "unchecked"; ?>"></i></td>
							   <td><?=$row->modified_dt?></td>
							   <td>
									<div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/<?=$term?>/form_distrits?action=update&id_province=<?=$id_province?>&id_distrit=<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/<?=$term?>/delete_distrit?id_province=<?=$id_province?>&id_distrit=<?=$row->id?>')">
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

				</div>
			</div>
			
		</div>	
	
	</div>
</div>