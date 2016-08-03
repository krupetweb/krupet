
									<div class="panel-title" >
					            		<br />
										<form class="form-inline" >
				                            <div class="form-group" >
				                                        <label style="margin-top: 7px;"   class="col-sm-4 control-label">Page Fillter</label>
				                                        <div class="col-sm-5">
				                                            <select id='my_fillter' onchange="fillter(this.value)" class="form-control" style="min-width:200px;">
				                                                <?php 
				                                                	$pages			='';
				                                                	$first			='';
				                                                	foreach($appeared_pages as $row){ 
				                                                		if($row->id==$id_service_category){
				                                                			$first			="<option value=".$row->id."> ".$row->en_name." </option>";
				                                                		}else{
				                                                			$pages	.="<option value=".$row->id."> ".$row->en_name." </option>";
				                                                		}
				                                                	}
				                                                	echo $first.$pages;
				                                                ?>
				                                            </select>
				                                        </div>
				                            </div>
				                        </form>
					            	</div>

					            	<div class="form-group pull-right" >

				                            <a id="id_add_new" href="<?=base_url().'admin/all_service_displays_form/create/'.$id_service_category?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'>
				                                <i class="entypo-plus"></i>Add New
				                            </a> 
				                            <?php if($page_name!="all_service_displays"){ ?>
				                            <a href="<?=base_url().'admin/all_service_displays/'.$id_service_category?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px; <?php if($page=='all_service_displays') echo "display:none;" ?>'>
				                                <i class="entypo-back"></i>Back
				                            </a> 
				                            <?php } ?>
				                    </div>
<script>
	function fillter(id){
		$('#id_add_new').attr('href', '<?=base_url()?>admin/all_service_displays_form/create/'+id);
		$.ajax({
				url: '<?=base_url()?>admin/all_service_displays_fillter/'+id,
				success: function(response)
				{
					$('#data_container').html(response);
				}
			});
	}
	<?php if($page_name=="all_service_displays"){ ?>
	$( document ).ready(function() {
	    fillter($('#my_fillter').val())
	});
	<?php } ?>
</script>













