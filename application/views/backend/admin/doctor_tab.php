<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='doctor_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/doctor_form/update/<?=$id_doctor?>">Overview</a>
				</li>
				<li class="<?php if($page_name=='doctor_background_form' ) echo 'active' ?>">
					<a <?php if($page_name=='doctor_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/doctor_background_form/update/<?=$id_doctor?>"<?php } ?>>Background & Experience</a>
				</li>
				<li class="<?php if($page_name=='doctor_contact_form' ) echo 'active' ?>">
					<a <?php if($page_name=='doctor_form' AND $action=='create'){?> href="#" style='cursor:not-allowed;'<?php }else { ?> href="<?=base_url()?>admin/doctor_contact_form/update/<?=$id_doctor?> <?php } ?>" >Contact</a>
				</li>
				<li class="<?php if($page_name=='doctor_hospitals'  or $page_name=='doctor_hospitals_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/doctor_hospitals/<?=$id_doctor?>">Hospitals</a>
				</li>
				<li class="<?php if($page_name=='doctor_services'  or $page_name=='doctor_service_form') echo 'active' ?>">
					<a <?php if($page_name=='doctor_form' AND $action=='create'){?> href="#" style='cursor:not-allowed;'<?php }else { ?> href="<?=base_url()?>admin/doctor_services/<?=$id_doctor?>"<?php } ?> >Services</a>
				</li>
</ul>