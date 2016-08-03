<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary" data-collapsed="0">
        	<div class="panel-heading">
            	<div class="panel-title">
            		<i class="entypo-plus-circled"></i>Phone Type Form
            	</div>
				<a href="<?=base_url()?>admin/phone_form/create"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-plus-circled"></i>Add New </a> 
				<a href="<?=base_url()?>admin/phones"  class="btn btn-primary pull-right" style='margin:30px 13px 0px 0px;'><i class="entypo-back"></i>Back</a> 
            </div>
			<div class="panel-body">
				<?php
					
					$id				=0;
					$en_name		='';
					$kh_name		='';
					$phone 			='';
					$id_distrit		=0;
					$id_province 	=0;
					$id_type 	=0;
					$is_published	=0;
					$is_featured	=0;
					$modified_dt='';
					
					$button_caption='create';
					
					if($action=='update'){
					
						$id				= $data[0]->id;
						$en_name		= $data[0]->en_name;
						$kh_name		= $data[0]->kh_name;
						$phone			= $data[0]->phone;
						$id_province	= $data[0]->id_province;
						$id_distrit		= $data[0]->id_distrit;
						$id_type	= $data[0]->id_type;
						$is_published	= $data[0]->is_published;
						$is_featured	= $data[0]->is_featured;
						$modified_dt    = $data[0]->modified_dt;
						
						$button_caption='update';
					}
						$provinces_data=array();
						foreach($provinces as $row){
							$provinces_data[$row -> en_name]=$row -> id;
						}
						$distrits_data=array();
						foreach($distrits as $row){
							$distrits_data[$row -> en_name]=$row -> id;
						}
						$types_data=array();
						foreach($types as $row){
							$types_data[$row -> en_name]=$row -> id;
						}
				
				?>
			
			
			
				<?=form_open(base_url().'admin/phone_cud/'.$action.'/'.$id , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));?>
				<?php 
					text_field(array('caption'=>'Name (ENG)', 'name'=>'en_name', 'value'=>$en_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Name (KHM)', 'name'=>'kh_name', 'value'=>$kh_name, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					text_field(array('caption'=>'Phone', 'name'=>'phone', 'value'=>$phone, 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.'));
					select_field(array('caption'=>'Provnces', 'name'=>'id_province', 'data'=>$provinces_data, 'id'=>$id_province));
					select_field(array('caption'=>'Distrits', 'name'=>'id_distrit', 'data'=>$distrits_data, 'id'=>$id_distrit));
					select_field(array('caption'=>'Types', 'name'=>'id_type', 'data'=>$types_data, 'id'=>$id_type));
					boolean_field(array('caption'=>'Publish', 'name'=>'is_published', 'value'=>$is_published, 'id'=>$id));
					boolean_field(array('caption'=>'Featured', 'name'=>'is_featured', 'value'=>$is_featured, 'id'=>$id));
					button_field(array('button_caption'=>$button_caption, 'url_delete'=>base_url().'admin/phone_cud/delete/'.$id));
				?>
				<?=form_close()?>
			</div>
        </div>
    </div>
</div>
<script>
	$(document).ready(function(){
		get_distrit();
		$("#id_province").change(function(){
			get_distrit();
		})
	})

	function get_distrit(){
		id_province=$("#id_province").val();
		$.ajax({
            method:"POST",
            url: "<?php echo base_url(); ?>/admin/get_distrit",
            data: {
                 
                "id_province": id_province,
                "id_distrit": <?php echo $id_distrit; ?>
              
            }

        }).done(function(respond) {
            $("#id_distrit").html(respond);
        });
	}
</script>
		