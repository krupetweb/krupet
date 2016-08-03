<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='province_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/province_form/update/<?=$id_province?>">Overview</a>
				</li>
				<li class="<?php if($page_name=='distrits' or $page_name=='distrit_form' ) echo 'active' ?>">
					<a <?php if($page_name=='province_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/distrits/<?=$id_province?>"<?php } ?>>Distrits</a>
				</li>		
</ul>
