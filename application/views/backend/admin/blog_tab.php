<ul class="nav tabs-vertical">
				<br />
				<li class="<?php if($page_name=='blog_form') echo 'active' ?>">
					<a href="<?=base_url()?>admin/blog_form/<?php echo $id_category;?>/update/<?=$id?>">Overview</a>
				</li>
				<li class="<?php if($page_name=='blog_tags'  or $page_name=='blog_tag_form') echo 'active' ?>">
					<a <?php if($page_name=='blog_tag_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/blog_tags/<?php echo $id_category?>/<?=$id?>"<?php } ?>>Tag</a>
				</li>	
</ul>
