
									<div class="panel-title" >
					            		<br />
										<form class="form-inline" >
				                            <div class="form-group" >
				                                        <label style="margin-top: 7px;"   class="col-sm-4 control-label">Page Fillter</label>
				                                        <div class="col-sm-5">
				                                            <select id='my_fillter' onchange="slides_fillter(this.value)" class="form-control" style="min-width:200px;">
				                                                <?php 
				                                                	$pages	='';
				                                                	$first			='';
				                                                	foreach($slide_pages as $row){ 
				                                                		if($row->id==$id_slide_page){
				                                                			$first			="<option value=".$row->id."> ".$row->page_name." </option>";
				                                                		}else{
				                                                			$pages	.="<option value=".$row->id."> ".$row->page_name." </option>";
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

				                            <a id="id_add_new" href="<?=base_url().'admin/slides_form/create/'.$id_slide_page?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'>
				                                <i class="entypo-plus"></i>Add New
				                            </a> 
				                            <a href="<?=base_url().'admin/slides/'.$id_slide_page?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px; <?php if(!isset($it_is_form)) echo "display:none;" ?>'>
				                                <i class="entypo-back"></i>Back
				                            </a> 
				                    </div>

<script>
function slides_fillter(id_slide_page){
	$('#id_add_new').attr('href', '<?=base_url()?>admin/slides_form/create/'+id_slide_page);
	$.ajax({
			url: '<?=base_url()?>admin/slides_fillter/'+id_slide_page,
			success: function(response)
			{
				//toastr.success(response);
				$('#vehicle_container').html(response);
			}
		});
}

</script>












