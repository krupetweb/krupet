
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
					                                <th><div>English</div></th>
					                                <th><div>Khmer</div></th>
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
					                                <td><input id="e_<?=$row->id?>" type="text" class="form-control" value="<?php echo $row->en;?>" style="width:100%" /></td>
					                                <td><input id="k_<?=$row->id?>" type="text" class="form-control" value="<?php echo $row->kh;?>" style="width:100%" /></td>
					                               
					                                <td class="text-center">
					                                    <a href="#" onclick="edit_lang(<?=$row->id?>)"  class="btn btn-primary">
							                                <i class="entypo-cog" ></i>Save
							                            </a> 
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
	function edit_lang(id_language){
		url="<?=base_url()?>admin/languages/update_languages/"+id_language;
		
		$.ajax({
			url: url,
			method: 'POST',
			data: {
				en: $("#e_"+id_language).val(),
				kh: $("#k_"+id_language).val(),
			},
			success: function(response)
			{
				infomation_modal(response);
			}
		});
	}
</script>











