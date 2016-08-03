 										<table class="table table-bordered datatable limited_drop_targets" id="table_export">
					                        <thead>
					                            <tr>
					                                <th width="80"><div>#</div></th>
													<th><div>Title</div></th>
					                                <th><div>Publish</div></th>
					                                <th><div>Image</div></th>
					                                <th><div>Modified Date</div></th>
					                                <th></th>
					                            </tr>
					                        </thead>
					                        <tbody id="whats_news_container">
					                        	<?php 
					                                    $i=0;
					                                    foreach($data as $row):
					                                        $i++;
					                            ?>
					                                    
					                            <tr data-id="<?php echo $row->id;?>">
					                                <td><?php echo $i; ?></td>
					                                <td><?php echo $row->en_title;?></td> 
					                                <td><i id="published_icon_<?=$row->id?>" onclick="is_published(<?=$row->id?>, '<?=base_url().'admin/update_published_status/tbl_slides/'.$row->id?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo 'check'; else echo 'unchecked'; ?>"></td> 
					                                <td><img src="<?php echo base_url().$row->image;?>" class="img img-responsive thumbnail" /></td>
					                                <td><?php echo $row->modified_dt;?></td>
					                                <td>
						                                <div class="btn-group" >
						                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
						                                        Action <span class="caret"></span>
						                                    </button>
						                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
						                                        <li>
						                                        	<a href="<?=base_url()?>admin/slides_form/update/<?=$id_slide_page?>/<?=$row->id?>" >
						                                            <i class="entypo-pencil"></i>EDIT</a>
						                                        </li>
						                                        <li class="divider"></li>
						                                        <li>
						                                        	<a href="#" onclick="confirm_modal('<?=base_url()?>admin/slides_cud/delete/<?=$id_slide_page?>/<?=$row->id?>')">
						                                            <i class="entypo-trash"></i>DELETE</a>
						                                        </li>
						                                    </ul>
						                                </div>   
						                            </td>
					                            </tr>
					                            <?php endforeach;?>
					                        </tbody>
					                    </table>

<?php $page_name='slides'; include('data_order.php');?>