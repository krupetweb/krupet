<?php //print_r($data); ?>
 										<table class="table table-bordered " id="table_export">
					                        <thead>
					                            <tr>
					                                <th width="80"><div>#</div></th>
													<th><div>Name</div></th>
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
					                                    
					                            <tr>
					                                <td><?php echo $i; ?></td>
					                                <td><?php echo $row->name;?></td>
					                                 <td><img src="<?php echo base_url().$row->v_image;?>" class="img img-responsive thumbnail" /></td>
					                                <td><i id="published_icon_<?=$row->id?>" onclick="is_published(<?=$row->id?>, '<?=base_url().'admin/update_published_status/tbl_vertical_ads_displays/'.$row->id?>')" class="glyphicon glyphicon-<?php if($row->is_published) echo 'check'; else echo 'unchecked'; ?>"></td> 
					                                <td><?php echo $row->modified_dt;?></td>
					                                <td>
						                                <div class="btn-group" >
						                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
						                                        Action <span class="caret"></span>
						                                    </button>
						                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
						                                        <li>
						                                        	<a href="<?=base_url()?>admin/vertical_ads_displays_form/update/<?=$id_appeared_page?>/<?=$row->id?>" >
						                                            <i class="entypo-pencil"></i>EDIT</a>
						                                        </li>
						                                        <li class="divider"></li>
						                                        <li>
						                                        	<a href="#" onclick="confirm_modal('<?=base_url()?>admin/all_service_displays_cud/delete/<?=$id_appeared_page?>/<?=$row->id?>')">
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