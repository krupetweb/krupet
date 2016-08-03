
<hr />

<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('sent_list_tab.php') ?>
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Image
									</div>
									<a href="<?=base_url()?>admin/sent_list_blog_form/create/<?=$id_newsletter?>/0"  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New</a> 
								</div>
								<div class="panel-body">
									<?php
										
										$en_title           ='';
										$id_blog			='';
										$created_dt     	='';
										$button_caption ='create';
										if($action=='update'){
											
											$id_blog				= $data[0]->id_blog;
											$created_dt    		= $data[0]->created_dt;
											$button_caption='update';
										}
									?>
								
								
								
									<?=form_open(base_url().'admin/sent_list_blog_cud/'.$action.'/'.$id_newsletter.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered valid_newsletterate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										
										text_field(array('caption'=>'ID Blog', 'name'=>'id_blog', 'value'=>$id_blog, 'required'=>'required', 'required_message'=>''));
										text_field(array('caption'=>'Blog Title', 'name'=>'en_title', 'value'=>$en_title, 'required'=>'required', 'required_message'=>''));
										if($action=='update') inform_field(array('caption'=>'Created Date', 'value'=>$created_dt));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/sent_list_blog_cud/delete/'.$id_newsletter.'/'.$id));
									?>
										
									<?=form_close()?>
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
<script>
	$(document).ready(function(){
		get_blog_title();

		$("#id_blog").keyup(function(){
			get_blog_title();
		})
	});


	function get_blog_title(){
		id_blog=$("#id_blog").val();
		if(id_blog !=''){
		$.ajax({
            method:"POST",
            url: "<?php echo base_url(); ?>admin/get_blog_title",
            data: {
                 
                "id_blog": id_blog
            }
        }).done(function(respond) {
            $("#en_title").val(respond);
        });
        }
	}
</script>