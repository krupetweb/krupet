<ul class="nav tabs-vertical">
				<li class="text-center" style="background:white;font-size:20px;">
					<a  href="#"><b><i style="color:#D12026;"><i class="fa fa-hospital-o">&nbsp; </i><?php echo $this->session->userdata('tab_name') ? $this->session->userdata('tab_name') : ""; ?></i></b></a>
				</li>

				<li class="<?php if($active_nav=='form_hospital_category') echo 'active' ?>">
					<a  href="<?=base_url()?>admin/<?=$term?>/form_hospital_categories?action=update&id_hospital_category=<?=$id_hospital_category?>">Overview</a>
				</li>

				<li class="<?php if($active_nav=='types' or $page=='form_types') echo 'active' ?>">
					<a <?php if($active_nav=='hospital_category_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/types?id_hospital_category=<?=$id_hospital_category?>"<?php } ?>>Types</a>
				</li>
				
</ul>