            <ul class="nav tabs-vertical">
				<li class="text-center" style="background:white;font-size:20px;">
					<a  href="#"><b><i style="color:#D12026;"><i class="fa fa-doctor-o">&nbsp; </i><?php echo $this->session->userdata('tab_name') ? $this->session->userdata('tab_name') : ""; ?></i></b></a>
				</li>

				<li class="<?php if($active_nav=='form_doctor') echo 'active' ?>">
					<a  href="<?=base_url()?>admin/<?=$term?>/form_doctors?action=update&id_doctor=<?=$id_doctor?>">Overview</a>
				</li>

				<li class="<?php if($active_nav=='background_experien' or $page=='background_experien') echo 'active' ?>">
					<a <?php if($active_nav=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/form_doctor_experien?action=update&id_doctor=<?=$id_doctor?>"<?php } ?>>Background & Experience</a>
				</li>

				<li class="<?php if($active_nav=='contact' or $page=='contact') echo 'active' ?>">
					<a <?php if($active_nav=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/form_contact?action=update&id_doctor=<?=$id_doctor?>"<?php } ?>>Contact</a>
				</li>
				<li class="<?php if($page=='hospitals'  or $page=='form_hospitals') echo 'active' ?>">
					<a <?php if($page=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/hospitals?id_doctor=<?=$id_doctor?>"<?php } ?>>Hospitals</a>
				</li>
				<li class="<?php if($page=='hospitals'  or $page=='form_hospitals') echo 'active' ?>">
					<a <?php if($page=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/galleries?id_doctor=<?=$id_doctor?>"<?php } ?>>Gallery</a>
				</li>
				<li class="<?php if($page=='services'  or $page=='form_services') echo 'active' ?>">
					<a <?php if($page=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/services?id_doctor=<?=$id_doctor?>"<?php } ?>>Services</a>
				</li>
				
				
				<!--<li class="<?php if($page=='doctor_rating'  or $page=='doctor_rating_form') echo 'active' ?>">
					<a <?php if($page=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/doctor_rating/<?=$id_doctor?>"<?php } ?>>Rating Data</a>
				</li>
				<li class="<?php if($page=='doctor_rating_report' ) echo 'active' ?>">
					<a <?php if($page=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/doctor_rating_report/<?=$id_doctor?>"<?php } ?>>Rating Report</a>
				</li>-->
				
				
</ul>