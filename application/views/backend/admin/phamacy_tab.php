<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='phamacy_form') echo 'active' ?>">
					<a  href="<?=base_url()?>admin/phamacy_form/update/<?=$id_phamacy?>">Overview</a>
				</li>
				
				<!--
				<li class="<?php if($page_name=='hospital_contact_form') echo 'active' ?>">
					<a <?php if($page_name=='hospital_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_contact_form/update/<?=$id_hospital?>"<?php } ?>>Contact</a>
				</li>
			-->

				<li class="<?php if($page_name=='phamacy_galleries'  or $page_name=='phamacy_gallery_form') echo 'active' ?>">
					<a <?php if($page_name=='phamacy_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/phamacy_galleries/<?=$id_phamacy?>"<?php } ?>>Gallery</a>
				</li>
				
</ul>