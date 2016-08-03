            <ul class="nav tabs-vertical">
				<li class="text-center" style="background:white;font-size:20px;">
					<a  href="#"><b><i style="color:#D12026;"><i class="fa fa-hospital-o">&nbsp; </i><?php echo $this->session->userdata('tab_name') ? $this->session->userdata('tab_name') : ""; ?></i></b></a>
				</li>

				<li class="<?php if($active_nav=='form_hospital') echo 'active' ?>">
					<a  href="<?=base_url()?>admin/<?=$term?>/form_hospitals?action=update&id_hospital=<?=$id_hospital?>">Overview</a>
				</li>

				<li class="<?php if($active_nav=='branches' or $page=='form_branches') echo 'active' ?>">
					<a <?php if($active_nav=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/branches?id_hospital=<?=$id_hospital?>"<?php } ?>>Branches</a>
				</li>
				<li class="<?php if($page=='departments'  or $page=='form_departments') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/departments?id_hospital=<?=$id_hospital?>"<?php } ?>>Departments</a>
				</li>
				<li class="<?php if($page=='services' or $page=='form_services') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/services?id_hospital=<?=$id_hospital?>"<?php } ?>>Services</a>
				</li>
				<li class="<?php if($page=='specialists'  or $page=='form_specialists') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/specialists?id_hospital=<?=$id_hospital?>"<?php } ?>>Specialists</a>
				</li>
				
				<li class="<?php if($page=='doctors'  or $page=='form_doctors') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/doctors?id_hospital=<?=$id_hospital?>"<?php } ?>>Doctors</a>
				</li>
				<li class="<?php if($page=='galleries'  or $page=='form_galleries') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/galleries?id_hospital=<?=$id_hospital?>"<?php } ?>>Gallery</a>
				</li>

				<li class="<?php if($page=='codes'  or $page=='form_codes') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/codes?id_hospital=<?=$id_hospital?>"<?php } ?>>Rating Code</a>
				</li>
				
				<li class="<?php if($page=='ratings'  or $page=='form_ratings') echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/ratings?id_hospital=<?=$id_hospital?>"<?php } ?>>Rating Data</a>
				</li>
				<!--<li class="<?php if($page=='hospital_rating_report' ) echo 'active' ?>">
					<a <?php if($page=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_rating_report/<?=$id_hospital?>"<?php } ?>>Rating Report</a>
				</li>-->
				
				
</ul>