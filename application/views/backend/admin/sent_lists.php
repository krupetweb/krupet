				<a href="<?=base_url()?>admin/sent_list_form/create"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
			   
			   <br><br>
			   
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Name</th>
							<th>sent</th>
							<th>Sent Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							  <td>
									<i id="icon-<?php echo $row->id; ?>"  class="glyphicon glyphicon-<?php if($row->is_sent) echo 'check'; else echo 'unchecked'; ?>"></i>
								</td>
								<td id="send-dt-<?php echo $row->id; ?>"><?=$row->sent_dt?></td>
							   <td>
									 <div class="btn-group">
											<button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
												Action <span class="caret"></span>
											</button>
											<ul class="dropdown-menu dropdown-default pull-right" role="menu">
												<li>
													<a href="<?=base_url()?>admin/sent_list_form/update/<?=$row->id?>">
													<i class="entypo-pencil"></i>EDIT</a>
												</li>
												<li class="divider"></li>
												<li>
													<a href="#" onclick="confirm_modal('<?=base_url()?>admin/sent_list_cud/delete/<?=$row->id?>')">
													<i class="entypo-trash"></i>DELETE</a>
												</li>
											</ul>
										</div>
										<?php if(!$row->is_sent){ ?>
										<button id="btn-send-<?php echo $row->id; ?>" onclick="send(<?php echo $row->id; ?>)" class="btn btn-primary">
										    <i class="fa fa-send" ></i> Send Now!
									    </button>
									    <?php }?>
							   </td>
							</tr>
						<?php } ?>
                    </tbody>
                </table>
                <script type="text/javascript">
               		function send(id_newsletter){
               			x=confirm('Are you sure you wish to send this list of blogs to subscribers now?');
               			if(x){
               				$("#btn-send-"+id_newsletter).html("<img src='<?php echo base_url(); ?>assets/backend/images/loader-2.gif' />");

               				$.ajax({
								url: '<?=base_url()?>admin/send_newsletter/'+id_newsletter,
								success: function(response)
								{
									//alert(response);
									$("#icon-"+id_newsletter).removeClass('glyphicon-unchecked').addClass("glyphicon-check");
									$("#btn-send-"+id_newsletter).hide();
									$("#send-dt-"+id_newsletter).html(response);

								}
							});
               			}
               		}
                </script>