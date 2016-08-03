
<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php include('hospital_category_tab.php') ?>
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Hospital types Form
									</div>
									<a href="<?=base_url()?>admin/hospital_type_form/create/<?=$id_category?>/0"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New</a>
									<a href="<?=base_url()?>admin/hospital_types/<?=$id_category?>"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Back</a> 
								</div>
								<div class="panel-body">
									<?php
										
										
										$en_name		='';
										$kh_name		='';
										$is_published		=0;
										//$modified_dt		='';
										
										$button_caption='create';
										
										if($action=='update'){
										
											$id				= $data[0]->id;
											$en_name		= $data[0]->en_name;
											$kh_name		= $data[0]->kh_name;
											$is_published		= $data[0]->is_published;
											//$modified_dt		= $data[0]->modified_dt;
											$button_caption='update';
										}
										
									
									?>
								
								
								
									<?=form_open(base_url().'admin/hospital_type_cud/'.$action.'/'.$id_category.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
									<?php 
										text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
										boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id_category));
										button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/hospital_type_cud/delete/'.$id_category.'/'.$id ,));
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
