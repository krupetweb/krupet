<ul class="nav tabs-vertical">
				<li class="text-center" style="background:white;font-size:20px;">
					<a  href="#"><b><i style="color:#D12026;"><i class="fa fa-hospital-o">&nbsp; </i><?php echo $this->session->userdata('tab_name') ? $this->session->userdata('tab_name') : ""; ?></i></b></a>
				</li>

				<li class="<?php if($page_name=='hospital_form') echo 'active' ?>">
					<a  href="<?=base_url()?>admin/hospital_form/update/<?=$id_hospital?>">Overview</a>
				</li>

				<li class="<?php if($page_name=='hospital_branches' or $page_name=='hospital_branch_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_branches/<?=$id_hospital?>"<?php } ?>>Branches</a>
				</li><li class="<?php if($page_name=='hospital_services' or $page_name=='hospital_service_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_services/<?=$id_hospital?>"<?php } ?>>Services</a>
				</li>
				<li class="<?php if($page_name=='hospital_specialists'  or $page_name=='hospital_specialist_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_specialists/<?=$id_hospital?>"<?php } ?>>Specialists</a>
				</li>
				<li class="<?php if($page_name=='hospital_departments'  or $page_name=='hospital_department_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_departments/<?=$id_hospital?>"<?php } ?>>Departments</a>
				</li>
				<li class="<?php if($page_name=='hospital_doctors'  or $page_name=='hospital_doctor_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_doctors/<?=$id_hospital?>"<?php } ?>>Doctors</a>
				</li>
				<li class="<?php if($page_name=='hospital_galleries'  or $page_name=='hospital_gallery_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_galleries/<?=$id_hospital?>"<?php } ?>>Gallery</a>
				</li>

				<li class="<?php if($page_name=='hospital_codes'  or $page_name=='hospital_code_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_codes/1/<?=$id_hospital?>"<?php } ?>>Rating Code</a>
				</li>
				
				<li class="<?php if($page_name=='hospital_rating'  or $page_name=='hospital_rating_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_rating/<?=$id_hospital?>"<?php } ?>>Rating Data</a>
				</li>
				<li class="<?php if($page_name=='hospital_rating_report' ) echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_rating_report/<?=$id_hospital?>"<?php } ?>>Rating Report</a>
				</li>
				
				
</ul>