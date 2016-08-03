            <ul class="nav tabs-vertical">
				<li class="text-center" style="background:white;font-size:20px;">
					<a  href="#"><b><i style="color:#D12026;"><i class="fa fa-doctor-o">&nbsp; </i><?php echo $this->session->userdata('tab_name') ? $this->session->userdata('tab_name') : ""; ?></i></b></a>
				</li>

				<li class="<?php if($active_nav=='form_phamacies') echo 'active' ?>">
					<a  href="<?=base_url()?>admin/<?=$term?>/form_phamacies?action=update&id_phamacy=<?=$id_phamacy?>">Overview</a>
				</li>

				<li class="<?php if($page=='galleries'  or $page=='form_galleries') echo 'active' ?>">
					<a <?php if($page=='phamacy_form' AND $action=='create'){?>  href="#" style='cursor:not-allowed;' <?php }else { ?> href="<?=base_url()?>admin/<?=$term?>/galleries?id_phamacy=<?=$id_phamacy?>"<?php } ?>>Gallery</a>
				</li>
				
				
</ul>