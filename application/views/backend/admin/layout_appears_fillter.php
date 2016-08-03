
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
				                                                		if($row->id==$id_page){
				                                                			$first			="<option value=".$row->id."> ".$row->name." </option>";
				                                                		}else{
				                                                			$pages	.="<option value=".$row->id."> ".$row->name." </option>";
				                                                		}
				                                                	}
				                                                	echo $first.$pages;
				                                                ?>
				                                            </select>
				                                        </div>
				                            </div>
				                        </form>
					            	</div>

<script>
	function fillter(id){
		$.ajax({
				url: '<?=base_url()?>admin/layout_appears_fillter/'+id,
				success: function(response)
				{
					$('#data_container').html(response);
				}
			});
	}

	<?php if($page_name=="layout_appears"){ ?>
	$( document ).ready(function() {
	    fillter($('#my_fillter').val())
	});
	<?php } ?>
</script>













