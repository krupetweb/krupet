<div class="row">
	<div class="col-md-12 col-sm-12 clearfix" style="text-align:center;">
		<h2 style="font-weight:200; margin:0px;"><?php echo $system_name;?></h2>
    </div>
	<!-- Raw Links -->
	<div class="col-md-12 col-sm-12 clearfix ">
		
        <ul class="list-inline links-list pull-left">
        <!-- Language Selector -->			
           <li class="dropdown language-selector">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
                        	<i class="entypo-user"></i> Admin
                    </a>

				
				<ul class="dropdown-menu <?php if ($text_align == 'right-to-left') echo 'pull-right'; else echo 'pull-left';?>">
					<li>
						<a href="<?php echo base_url();?>admin/manage_profile">
                        	<i class="entypo-info"></i>
							<span>edit_profile</span>
						</a>
					</li>
					<li>
						<a href="<?php echo base_url();?>admin/manage_profile">
                        	<i class="entypo-key"></i>
							<span>change_password</span>
						</a>
					</li>
				</ul>
				
				
			</li>
        </ul>
		<ul class="list-inline links-list pull-right">
			<li>
				<a href="<?php echo base_url();?>cms/logout">
					Log Out <i class="entypo-logout right"></i>
				</a>
			</li>
		</ul>
        
	</div>
	
</div>

<hr style="margin-top:0px;" />