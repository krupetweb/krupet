<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='sent_list_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/sent_list_form/update/<?=$id_newsletter?>">Overview</a>
				</li>
				<li class="<?php if($page_name=='sent_list_blogs' or $page_name=='sent_list_blog_form' ) echo 'active' ?>">
					<a <?php if($page_name=='sent_list_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/sent_list_blogs/<?=$id_newsletter?>"<?php } ?>>Blog</a>
				</li>
				
</ul>