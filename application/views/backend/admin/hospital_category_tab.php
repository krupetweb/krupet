<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='hospital_category_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/hospital_category_form/update/<?=$id_category?>">Overview</a>
				</li>
				<li class="<?php if($page_name=='hospital_types' or $page_name=='hospital_type_form' ) echo 'active' ?>">
					<a <?php if($page_name=='hospital_category_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/hospital_types/<?=$id_category?>"<?php } ?>>Types</a>
				</li>		
</ul>
