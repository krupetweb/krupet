<div class="sidebar-menu">
    <header class="logo-env" >

        <!-- logo -->
        <div class="logo" style="">
            <a href="<?php echo base_url(); ?>" target="blank">
                <img src="<?php echo base_url(); ?>assets/backend/images/logo.png" target="blank"  width="230" height="90"alt="" />
            </a>
        </div>

       

        <!-- open/close menu icon (do not remove if you want to enable menu on mobile devices) -->
        <div class="sidebar-mobile-menu visible-xs">
            <a href="#" class="with-animation">
                <i class="entypo-menu"></i>
            </a>
        </div>
    </header>

    <div style=""></div>	
    <ul id="main-menu" class="">
		 <!-- Contact Us -->
        <li class="<?php if ($active_page == 'ads'|| 
        					$active_page == 'featured_hospitals' || 
        					$active_page == 'featured_doctors' || 
        					$active_page == 'partners' || 
        					$active_page == 'official_sponsors' ||
        					$active_page == 'vertical_ads_displays'||
        					$active_page == 'horizontal_ads_displays'|| 
        					$active_page == 'potential_partners'  ) echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="fa fa-bookmark"></i>
                <span>Sponsors & Ads Management</span>
            </a>
             <ul>
				<li class="<?php if ($active_page == 'ads') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/ads">
						<span><i class="entypo-dot"></i>Advertisments</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'featured_hospitals') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/hospitals/featured">
						<span><i class="entypo-dot"></i>Featured Hospitals</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'featured_doctors') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/doctors/featured">
						<span><i class="entypo-dot"></i>Featured Doctors</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'partners') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/partners">
						<span><i class="entypo-dot"></i>Partners</span>
					</a>
				</li>
		        <li class="<?php if ($active_page == 'vertical_ads_displays'|| $active_page == 'horizontal_ads_displays') echo 'opened active has-sub'; ?> ">
		            <a href="#">
		                <i class="entypo-dot"></i>
		                <span>Ads Management</span>
		            </a>
		             <ul>
						<li class="<?php if ($active_page == 'vertical_ads_displays') echo 'active'; ?> ">
							<a href="<?php echo base_url(); ?>admin/vertical_ads_displays">
								<span><i class="entypo-dot"></i>Vertical</span>
							</a>
						</li>
						<li class="<?php if ($active_page == 'horizontal_ads_displays') echo 'active'; ?> ">
							<a href="<?php echo base_url(); ?>admin/horizontal_ads_displays">
								<span><i class="entypo-dot"></i>Horizontal</span>
							</a>
						</li>
						
		            </ul>
		        </li>
            </ul>
        </li>
		<li class="<?php if ($active_page == 'programes') echo 'active';?>">
			<a href="<?php echo base_url(); ?>admin/programes">
				<span><i class="fa fa-university"></i>Health Programes</span>
			</a>
		</li>
		<li class="<?php if ($active_page == 'doctors') echo 'active';?>">
			<a href="<?php echo base_url(); ?>admin/doctors">
				<span><i class="fa fa-user-md"></i>Doctors</span>
			</a>
		</li>
		<li class="<?php if ($active_page == 'hospitals') echo 'active';?>">
			<a href="<?php echo base_url(); ?>admin/hospitals">
				<span><i class="fa fa-hospital-o"></i>Hospitals</span>
			</a>
		</li>
		<li class="<?php if ($active_page == 'phamacies') echo 'active';?>">
			<a href="<?php echo base_url(); ?>admin/phamacies">
				<span><i class="fa fa-hospital-o"></i>Phamacies</span>
			</a>
		</li>
		 <li class="<?php if ( $active_page == 'special_blogs' || $active_page == 'featured_blog' || $active_page == 'blogs' || $active_page == 'blog_categories') echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="fa fa-book"></i>
                <span>Blogs</span>
            </a>
            <ul>
            	
            	<li class="<?php if ($active_page == 'featured_blog') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/blogs/featured">
						<span><i class="entypo-dot"></i>Featured Aticle </span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'blogs') echo 'active'; ?> ">
					<a href="<?=base_url()?>admin/blogs">
						<span><i class="entypo-dot"></i>All Blogs</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'blog_categories') echo 'active'; ?> ">
					<a href="<?=base_url()?>admin/blog_categories">
						<span><i class="entypo-dot"></i>Categories</span>
					</a>
				</li>
            </ul>
        </li>
        <li class="<?php if ( $active_page == 'subscribers' || $active_page == 'sent_lists' || $active_page == 'tips'|| $active_page == 'news' ) echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="fa fa-book"></i>
                <span>Newsletters</span>
            </a>
            <ul>
            	<li class="<?php if ($active_page == 'sent_lists') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/sent_lists">
						<span><i class="entypo-dot"></i>Sent List</span>
					</a>
				</li>

            	<li class="<?php if ($active_page == 'subscribers') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/subscribers/1">
						<span><i class="entypo-dot"></i>Subscribers </span>
					</a>
				</li>
            </ul>
        </li>
        <li class="<?php if ($active_page == 'feedbacks') echo 'active';?>">
			<a href="<?php echo base_url(); ?>admin/feedbacks">
				<span><i class="fa fa-eye"></i>Feedback</span>
			</a>
		</li>
		 <li class="<?php if ( $active_page == 'phones' || $active_page == 'phone_types' ) echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="fa fa-phone"></i>
                <span>Phone Numbers</span>
            </a>
            <ul>
				<li class="<?php if ($active_page == 'phones') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/phones">
						<span><i class="entypo-dot"></i>Phone Number</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'phone_types') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/phone_types">
						<span><i class="entypo-dot"></i>Phone Number Types</span>
					</a>
				</li>
				

            </ul>
        </li>
		<li class="<?php if ($active_page == 'health_consultants' ||$active_page == 'health_consultant_accepteds'|| $active_page == 'health_consultant_news'|| $active_page == 'contact_information'|| $active_page == 'contact_email'  ) echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="fa fa-info"></i>
                <span>Health Consultant</span>
                <span class="badge badge-secondary"><?=$num_of_new_requets?></span>
            </a>
             <ul>
				<!-- Menu -->
				<li class="<?php if ($active_page == 'health_consultant_news') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/health_consultants/news">
						<span><span class="badge badge-secondary"><?=$num_of_new_requets?></span>New Requsts</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'health_consultant_accepteds') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/health_consultants/accepted">
						<span><i class="entypo-dot"></i>Accepted Requsts </span>
					</a>
				</li>
				
				
            </ul>
        </li>
		<li class="<?php if (	$active_page == 'specialists'|| 
								$active_page == 'hospital_categories' || 
								$active_page == 'services' || 
								$active_page == 'provinces'||
								$active_page == 'departments'||
								$active_page == 'faqs' ||
								$active_page == 'tags' ||
								$active_page == 'questions' ||
								$active_page == 'hospital_survey_categories' ||
								$active_page == 'feedback_questions'||
								$active_page == 'feedback_answer_itemes' || 
								$active_page == 'q_hospital'||
								$active_page == 'services'|| 
								$active_page == 'service_categores'
								) echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="entypo-tools"></i>
                <span>Set Up</span>
            </a>
             <ul>
				<!-- Menu -->
				<li class="<?php if ($active_page == 'specialists') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/specialists">
						<span><i class="entypo-dot"></i>Specialization</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'hospital_categories') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/hospital_categories">
						<span><i class="entypo-dot"></i>Hospital Category</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'questions') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/questions">
						<span><i class="entypo-dot"></i>Hospital Rating Questions</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'feedback_questions') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/feedback_questions">
						<span><i class="entypo-dot"></i>Feedback Questions</span>
					</a>
				</li>
				 <li class="<?php if ( $active_page == 'services'|| $active_page == 'service_categores' ) echo 'opened active has-sub'; ?> ">
		            <a href="#">
		                <i class="entypo-dot"></i>
		                <span>Service</span>
		            </a>
		            <ul>
						<li class="<?php if ($active_page == 'services') echo 'active'; ?> ">
							<a href="<?php echo base_url(); ?>admin/services">
								<span><i class="entypo-dot"></i>All Services</span>
							</a>
						</li>
						<li class="<?php if ($active_page == 'service_categores') echo 'active'; ?> ">
							<a href="<?php echo base_url(); ?>admin/service_categores">
								<span><i class="entypo-dot"></i>Service Categories</span>
							</a>
						</li>
						

		            </ul>
		        </li>
				<li class="<?php if ($active_page == 'provinces') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/provinces">
						<span><i class="entypo-dot"></i>Provinces</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'departments') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/departments">
						<span><i class="entypo-dot"></i>Departments</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'tags') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/tags">
						<span><i class="entypo-dot"></i>Tags</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'faqs') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/faqs">
						<span><i class="entypo-dot"></i>FAQs
					</a>
				</li>
				
				
				
            </ul>
        </li>
		<li class="<?php if ($active_page == 'layout_appears' ||  $active_page == 'banners' || $active_page == 'consultant_images'|| $active_page == 'languages'|| $active_page == 'contact_information'|| $active_page == 'contents' || $active_page == 'contact_email'  ) echo 'opened active has-sub'; ?> ">
            <a href="#">
                <i class="entypo-cog"></i>
                <span>Setting</span>
            </a>
             <ul>
				<!-- Menu -->
				<li class="<?php if ($active_page == 'contact_information') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/contact_information">
						<span><i class="entypo-dot"></i>Contact Information</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'contact_email') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/contact_email">
						<span><i class="entypo-dot"></i>System E-mail </span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'contents') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/contents">
						<span><i class="entypo-dot"></i>Page Content</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'banners') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/banners">
						<span><i class="entypo-dot"></i>Banners</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'layout_appears') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/layout_appears">
						<span><i class="entypo-dot"></i>Layout Management</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'consultant_images') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/consultant_images">
						<span><i class="entypo-dot"></i>Consultant Image</span>
					</a>
				</li>
				<li class="<?php if ($active_page == 'languages') echo 'active'; ?> ">
					<a href="<?php echo base_url(); ?>admin/languages">
						<span><i class="entypo-dot"></i>Languages</span>
					</a>
				</li>
				
            </ul>
        </li>
  <!-- End -->
</div>