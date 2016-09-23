<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * CodeIgniter
 *
 * An open source application development framework for PHP 5.1.6 or newer
 *
 * @package		CodeIgniter
 * @author		ExpressionEngine Dev Team
 * @copyright	Copyright (c) 2008 - 2011, EllisLab, Inc.
 * @license		http://codeigniter.com/user_guide/license.html
 * @link		http://codeigniter.com
 * @since		Version 1.0
 * @filesource
 */

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Textbox
if ( ! function_exists('text_field')){
	function text_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'note'=>'', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];

		$note='';
		if(isset($param['note'])){
			$note=$param['note'];
		}
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>

						<div class="col-sm-5">
							<input type="text" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
							<span>'.$note.'</span>
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Color
if ( ! function_exists('color_field')){
	function color_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="color" style="height:100px" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Textbox
if ( ! function_exists('password_field')){
	function password_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Textbox
if ( ! function_exists('time_field')){
	function time_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="time" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Textbox
if ( ! function_exists('email_field')){
	function email_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> URL
if ( ! function_exists('url_field')){
	function url_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="url" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> URL
if ( ! function_exists('video_field')){
	function video_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'')) {
		
		$caption			=$param['caption'];
		$value				=$param['value'];
		$name				=$param['name'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];

		$hide='';
		if($value==''){
			$hide='display:none';

		}
		
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>

				<div class="form-group" id="video-container" style='.$hide.'>
						<label class="col-sm-2 control-label">Video</label>
						<div class="col-sm-5">
							<div class="embed-responsive embed-responsive-4by3 text-center">
							  <iframe id="frame_'.$name.'" class="embed-responsive-item thumbnail" src="https://www.youtube.com/embed/'.$value.'" style="margin:auto"></iframe>
							</div>
						</div>
				</div>
				
				<script>
					$( document ).ready(function() {
							
							//$( "#'.$name.'" ).attr( "src", "https://www.youtube.com/embed/"+'.$value.');

							$( "#'.$name.'" ).blur(function() {
								value=$( "#'.$name.'" ).val();
							  $( "#frame_'.$name.'" ).attr( "src", "https://www.youtube.com/embed/"+value);
							  	if(value!=""){
							  		$( "#video-container" ).attr("style", "display:block");
							  	}else{
							  		$( "#video-container" ).attr("style", "display:none");
							  	}
							  	
							});
						
					});
					
				</script>
				
				';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Date
if ( ! function_exists('date_field')){
	function date_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="date" class="form-control date_field" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Number
if ( ! function_exists('number_field')){
	function number_field($param=array('caption'=>'Name', 'name'=>'name', 'value'=>'', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="number" class="form-control" id="'.$name.'" name="'.$name.'" value="'.$value.'" '.$required.' placeholder=""  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> file
if ( ! function_exists('file_field')){
	function file_field($param=array('caption'=>'PDF', 'name'=>'pdf', 'accept'=>'aplication/pdf', 'required'=>'required', 'required_message'=>'Name is not allowed to be empty.')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$accept				=$param['accept'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<input type="file" class="form-control" id="'.$name.'" name="'.$name.'" accept="'.$accept.'" '.$required.'  data-message-required="'.$required_message.'" />
						</div>
				</div>';
	}
}

//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Static
if ( ! function_exists('static_field')){
	function static_field($param=array('caption'=>'Name', 'value'=>'')) {
		
		$name				=$param['name'];
		$value				=$param['value'];
		
		
		echo '	<div class="form-group">
						<label class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<p class="form-control-static>'.$value.'</p>
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Radio
if ( ! function_exists('radio_field')){
	function radio_field($param=array('caption'=>'Sex', 'name'=>'sex', 'data'=>array(array('Male', 'M', 1), array('Female', 'F', 0)))) {
		$caption	=$param['caption']; 
		$name		=$param['name']; 
		$data		=$param['data']; 
		
		$radios='';
		foreach($data as $item){
			$checked='';
			if($item[2]) $checked='checked';
			
			$radios.='  <div class="radio">
							  <label><input type="radio" id="'.$name.'_'.$item[1].'" name="'.$name.'" '.$checked.'  value="'.$item[1].'" >'.$item[0].'</label>
						</div>';
		}
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							'.$radios.'
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Textarea
if ( ! function_exists('textarea_field')){
	function textarea_field($param=array('caption'=>'Description', 'name'=>'description', 'value'=>'', 'required'=>'', 'required_message'=>'')) {
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<textarea class="form-control" id="'.$name.'" name="'.$name.'" '.$required.'  data-message-required="'.$required_message.'">'.$value.'</textarea>
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> CK Editor and finder
if ( ! function_exists('ck_editor_field')){
	function ck_editor_field($param=array('caption'=>'Description', 'name'=>'description', 'value'=>'', 'ck_finder_dir'=>'', 'required'=>'required', 'required_message'=>'Value Required')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$value				=$param['value'];
		$required			=$param['required'];
		$required_message	=$param['required_message'];
		
		echo '	<div class="form-group" style="">
						<div class="col-sm-2 text-right" >
							<label for="'.$name.'"" class=" control-label" >'.$caption.'</label>
						</div>
						<div class="col-sm-10">
						<textarea name="'.$name.'" class="to-be-editor">'.$value.'</textarea>
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Image file
if ( ! function_exists('image_field')){
	function image_field($param=array('caption'=>'Image', 'name'=>'image_file', 'image_src'=>'', 'note'=>'',  'file_required'=>'', 'required_message'=>'Please slet and imaage')) {
		
		$caption			=$param['caption'];
		$name				=$param['name'];
		$image_src			=$param['image_src'];
		$file_required		=$param['file_required'];
		$required_message	=$param['required_message'];
		$note 				='';
		if(isset($param['note'])){
			$note 			=$param['note'];
		}
		
		
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							
							<div class="fileinput fileinput-new" data-provides="fileinput" style="width:500px">
								<input type="hidden">
								<div class="fileinput-new thumbnail"  data-trigger="fileinput">
									<img src="'.$image_src.'" alt="..." >
								</div>
								<div class="fileinput-preview fileinput-exists thumbnail"></div>
								<div>
									<span class="btn btn-white btn-file">
										<span class="fileinput-new">Select image</span>
										<span class="fileinput-exists">Change</span>
										<input type="file" name="'.$name.'" '.$file_required.'  data-message-required="'.$required_message.'" accept="image/*">
									</span>
									<a href="#" class="btn btn-orange fileinput-exists" data-dismiss="fileinput">Remove</a>
								</div>
							</div>
							<br />
							<span>'.$note.'</span>
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Hidden Field
if ( ! function_exists('hidden_field')){
	function hidden_field($param=array('name'=>'hidden_file', 'value'=>'')) {
		$name=$param['name'];
		$value=$param['value'];
		echo '<input type="hidden" id="'.$name.'" name="'.$name.'" value="'.$value.'">';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Select
if ( ! function_exists('select_field')){
	function select_field($param=array('caption'=>'Category', 'name'=>'id_category', 'data'=>array('Nissan'=>1, 'Toyota'=>2, 'Masda'=>3), 'id'=>0),$def_option=0) {
		
		$caption	=$param['caption']; 
		$name		=$param['name']; 
		$data		=$param['data']; 
		$id			=$param['id']; 
		$def_option =$def_option; 

		$options='';
		$default='';
		foreach($data as $item=>$value){
			$selected = '';
			if($id==$value){
				if($value ==$def_option ){
					$default .='<option value="'.$value.'" selected="selected">'.$item.'</option>';
				}else{
					$default .='<option value="'.$value.'" >'.$item.'</option>';
				}
				
			}else{
				if($value ==$def_option ){
					$options .='<option value="'.$value.'" selected="selected">'.$item.'</option>';
				}else{
					$options .='<option value="'.$value.'" >'.$item.'</option>';
				}
			}
		}
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<select class="form-control" id="'.$name.'" name="'.$name.'">
								'.$default.$options.'
							</select>
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Publish
if ( ! function_exists('boolean_field')){
	function boolean_field($param=array('caption'=>'Publish', 'name'=>'is_published', 'value'=>0, 'id'=>0)) {
		
		$caption		=$param['caption']; 
		$name			=$param['name']; 
		$is_published	=$param['value']; 
		$id				=$param['id']; 
		
		$icon='<i id="'.$name.'_'.$id.'_icon"   onclick="change_published_icon(\''.$name.'_'.$id.'_icon\', \''.$name.'_'.$id.'\')" class="glyphicon glyphicon-unchecked"></i>';
		if($is_published){
			$icon='<i id="'.$name.'_'.$id.'_icon"   onclick="change_published_icon(\''.$name.'_'.$id.'_icon\', \''.$name.'_'.$id.'\')" class="glyphicon glyphicon-check"></i>';
		}
		echo '	<div class="form-group">
						<label for="'.$name.'"" class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							'.$icon.'
							<input type="hidden" id="'.$name.'_'.$id.'" name="'.$name.'" value="'.$is_published.'" />
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Button
if ( ! function_exists('button_field')){
	function button_field($param=array('button_caption'=>'create', 'url_delete'=>'#')) {
		$caption		=$param['button_caption'];
		$url_delete		=$param['url_delete'];
		
		
		$btn_delete='';
		$btn_icon='list-add';
		if($caption=='update'){
			$btn_delete='<a id="btn-delete" href="#" onclick="confirm_modal(\''.$url_delete.'\');" class="btn  btn-danger"> <i class="entypo-trash"></i>delete</a>';
			$btn_icon='cog';
		}
		echo '	<div class="form-group">
						<div class="col-sm-offset-3 col-sm-5">
							<button id="btn-update" type="submit" class="btn  btn-info"> <i class="entypo-'.$btn_icon.'"></i> '.$caption.'</button>
							'.$btn_delete.'
						</div>
				</div>';
	}
}
//:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::>> Button
if ( ! function_exists('inform_field')){
	function inform_field($param=array('caption'=>'Note', 'value'=>'')) {
		
		$caption		=$param['caption']; 
		$value			=$param['value'];
		
		echo '	<div class="form-group">
						<label  class="col-sm-2 control-label">'.$caption.'</label>
						<div class="col-sm-5">
							<p class="form-control-static">'.$value.'</p>
						</div>
				</div>';
	}
}


