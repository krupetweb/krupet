<?php 
	
	if($link_type!='ajax'){
		
		echo ' <div style=" text-align:right;">
				<a style="display:inline" href="'.base_url().'admin/'.$page.'/'.$other_params.'0/normal" class="btn btn-primary "><i class="entypo-back"></i>Back</a>
				<a style="display:inline"  href="'.base_url().'admin/'.$page.'_form/'.$page.'/create/'.$other_params.'0/normal" class="btn btn-primary "><i class="entypo-plus-circled"></i>Add New</a>
			   </div><br />
			   ';
		
	}
	
	include('form_header.php');
	echo form_open('admin/'.$form_cud.'/'.$page.'/'.$form_type.'/'.$other_params.$id.'/'.$link_type , array('method'=>'POST', 'class' => 'form-horizontal form-groups-bordered validate', 'enctype' => 'multipart/form-data'));
		
	foreach($form_fields as $form_field=>$item){
			
			switch($item['type']){
				case 'text_field'		: text_field($item['param']);break;
				case 'textarea_field'	: textarea_field($item['param']);break;
				case 'image_field'		: image_field($item['param']);break;
				case 'radio_field'		: radio_field($item['param']);break;
				case 'select_field'		: select_field($item['param']); break;
				case 'ck_editor_field'	: ck_editor_field($item['param']);break;
				case 'boolean_field'	: boolean_field($item['param']);break;
				case 'static_field'		: static_field($item['param']);break;
				case 'date_field'		: date_field($item['param']);break;
				case 'hidden_field'		: hidden_field($item['param']);break;
				case 'button_field'		: button_field($item['param']);break;
				case 'inform_field'		: inform_field($item['param']);break;
				case 'number_field'		: number_field($item['param']);break;
				case 'url_field'		: url_field($item['param']);break;
				case 'video_field'		: video_field($item['param']);break;
				default					: echo '';
			}
	}
			
			
	echo form_close();
	include('form_footer.php');
?>

