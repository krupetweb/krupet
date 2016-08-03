<?php
		$tbl_fiels='';
		$tbl_data='';
		
		for($x=0; $x<sizeof($table_fields); $x++){
			$tbl_fiels.='<td><div>'.$table_fields[$x].'</div></td>';
		}
		$num_of_field=sizeof($table_fields);
		$i=0;
		
		foreach($data as $row){
			
			$i++;
			$td='';
			for($j=0; $j<$num_of_field; $j++){
				$core='';
				if($types[$j]=='name'){
					$core=$row->name;
				}else if($types[$j]=='is_published'){
					if($row->is_published){
						$core= '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_'.$page.'/'.$row->id.'\')" class="glyphicon glyphicon-check"></i>';
					}else{
						$core= '<i id="published_icon_'.$row->id.'" onclick="is_published('.$row->id.', \''.base_url().'admin/update_published_status/tbl_'.$page.'/'.$row->id.'\')" class="glyphicon glyphicon-unchecked"></i>';
					}
					
				}else if($types[$j]=='image'){
					$core='<image src="'. base_url().$row->image.'" class="img img-responsive thumbnail" />';
				}else if($types[$j]=='thumbnail'){
					$core='<image src="'. base_url().$row->thumbnail.'" class="img img-responsive thumbnail" />';
				}else if($types[$j]=='e_name'){
					$core=$row->e_name;
				}else if($types[$j]=='is_default'){
					$core='';
					if($row->is_default){
						$core= '<i class="glyphicon glyphicon-check"></i>';
					}else{
						$core= '<i class="glyphicon glyphicon-unchecked"></i>';
					}
				}else if($types[$j]=='e_title'){
					$core=$row->e_title;
				}else if($types[$j]=='created_dt'){
					$core=$row->created_dt;
				}else if($types[$j]=='id_video'){
					$core='<div class="embed-responsive embed-responsive-16by9 text-center">
					  <iframe class="embed-responsive-item thumbnail" src="https://www.youtube.com/embed/'.$row->id_video.'" style="margin:auto"></iframe>
					</div>';
				}else if($types[$j]=='title'){
					$core=$row->title;
				}else if($types[$j]=='position'){
					$core=$row->position;
				}else if($types[$j]=='email'){
					$core=$row->email;
				}else if($types[$j]=='modified_dt'){
					$core=$row->modified_dt;
				}else if($types[$j]=='content'){
					$core=$row->content;
				}else if($types[$j]=='alais'){
					$core=$row->alais;
				}else if($types[$j]=='subject_name'){
					$core=$row->subject_name;
				}else if($types[$j]=='phone'){
					$core=$row->phone;
				}else if($types[$j]=='email'){
					$core=$row->email;
				}else if($types[$j]=='is_subscribed'){
					$core='';
					if($row->is_subscribed){
						$core= '<i class="glyphicon glyphicon-check"></i>';
					}else{
						$core= '<i class="glyphicon glyphicon-unchecked"></i>';
					}
				}
				
				$td.='<td>'.$core.'</td>';
			}
			
			$update_link=base_url().'admin/'.$page.'_form/'.$page.'/update/'.$other_params.$row->id.'/';
			$update_ajax='';
			$update_link_href='javascript:;';
			if($link_type=='ajax'){
				$update_ajax='onclick="showAjaxModal(\''.$update_link.'\')"';
			}else{
				$update_link_href=$update_link.$link_type;
			}
			
			$action='
						 <td>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                        Action <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
                                        <li>
                                        	<a href="'.$update_link_href.'" '.$update_ajax.' >
                                            <i class="entypo-pencil"></i>EDIT</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                        	<a href="#" onclick="confirm_modal(\''.base_url().'admin/'.$page.'_cud/'.$page.'/delete/'.$other_params.$row->id.'\')">
                                            <i class="entypo-trash"></i>DELETE</a>
                                        </li>
                                    </ul>
                                </div>
                                
                            </td>';
			$tbl_data.='<tr>
							<td>'.$i.'</td>
							'.$td.$action.'
						</tr>';
		}
		
		$add_link=base_url().'admin/'.$page.'_form/'.$page.'/create/'.$other_params;
		$add_ajax='';
		$add_link_href='javascript:;';
		if($link_type=='ajax'){
			$add_ajax='onclick="showAjaxModal(\''.$add_link.'\')"';
		}else{
			$add_link_href=$add_link.'0/'.$link_type;
		}
		
		echo '	 <a href="'.$add_link_href.'" '.$add_ajax.'  class="btn btn-primary pull-right"><i class="entypo-plus-circled"></i>Add New </a> 
			   <br><br>
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80"><div>#</div></th>
                            '.$tbl_fiels.'
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
                        '.$tbl_data.'
                    </tbody>
                </table>';
	
?>