
<div class="row">
	<div class="col-md-12">
	
		<div class="tabs-vertical-env">
		
			<div class="tab-content">
				<div class="tab-pane active">
					

					 <div id="vehicle_container">    
					                    <table class="table table-bordered datatable" id="table_export">
					                        <thead>
					                            <tr>
					                                <th width="80"><div>#</div></th>
					                                <th><div>Title</div></th>
					                                <th><div>Information</div></th>
					                                <th></th>
					                            </tr>
					                        </thead>
					                        <tbody>
					                        	
					                            <?php 
					                                    $i=0;
					                                    foreach($data as $row):
					                                        $i++;
					                            ?>
					                                    
					                            <tr>
					                                <td><?php echo $i; ?></td>
					                                <td><?=$row->title?></td>
					                                <td><input id="<?=$row->id?>" type="text" class="form-control" value="<?php echo $row->content;?>" style="width:100%" /></td>
					                               
					                                <td class="text-center">
					                                    <button href="#" onclick="edit_contact_info(<?=$row->id?>)"  class="btn btn-primary">
							                                <i class="entypo-cog" ></i>Edit
							                            </button> 
					                                </td>
					                            </tr>
					                            <?php endforeach;?>
					                        </tbody>
					                    </table>
					                    
					                </div>


					
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
<script type="text/JavaScript">
	function edit_contact_info(id){
		url="<?=base_url()?>admin/contact_informations/update_contact_info/"+id;
		
		$.ajax({
			url: url,
			method: 'POST',
			data: {
				content: $("#"+id).val(),
			},
			success: function(response)
			{
				toastr.success(response);
			}
		});
	}
</script>











