        
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="viewport" content="initial-scale=1.0"/>
	<meta name="format-detection" content="telephone=no"/>
	<title>Your Guide to Wellness</title>

	<style type="text/css"?
		@font-face {
			  font-family: 'HelveticaNeue-Medium';
			  src: url('HelveticaNeue-Medium.eot');
			  /* IE9 Compat Modes */
			  src: url('HelveticaNeue-Medium.eot?#iefix') format('embedded-opentype'), /* IE6-IE8 */
			  url('HelveticaNeue-Medium.woff') format('woff'), /* Modern Browsers */
			  url('HelveticaNeue-Medium.ttf') format('truetype'), /* Safari, Android, iOS */
			  url('HelveticaNeue-Medium.svg#d7af0fd9278f330eed98b60dddea7bd6') format('svg');
			  /* Legacy iOS */
			  font-style: normal;
			  font-weight: 400;
		}
		@font-face {
		    font-family: 'HelveticaNeueBold';
		    src: url('HelveticaNeue.ttf');
		    src: url('HelveticaNeue.ttf') format('truetype');
		}
	</style>
	<style type="text/css">

		html,body {
		    background-color:#fff;
		    margin:0;
		    padding:0
		}

		html {
		    width:100%
		}

		body {
		    margin:0;
		    padding:0;
		    -webkit-text-size-adjust:none;
		    -ms-text-size-adjust:none
		}


		table {
		    border-spacing:0;
		    border-collapse:collapse
		    
		}

		table td {
		    border-collapse:collapse
		}

		table tr {
		    border-collapse:collapse
		}

		img {
		    display:block!important
		}

		br,strong br,b br,em br,i br {
		    line-height:100%
		}


		a {
		    text-decoration:none
		}

		.button a {
		    font-size:14px;
		    font-family:HelveticaNeue-Medium,Helvetica,Arial,sans-serif;
		    color:#fff;
		    font-weight:300;
		    background:transparent
		}



		@media only screen and (max-width: 640px) {
		body {
		    width:auto!important
		}
		table {
		width:auto;
		}

		table[class="col1"] {
		    width:100%;
		}

		table[class="col2"] {
		    width:100%;
		    text-align:left
		}

		table[class="col3_one"] {
		    
			width: auto;
		    text-align: center;
		    margin: 0 0 20px 0
		}

		table[class="col3"] {
		    width:100%;
		    text-align:center;

		}

		table[class="col-600"] {
		    width:auto
		}

		table[class="insider"] {
		    width:auto
		}

		img[class="images_style"] {
		    width:300px;
		    height:200px
		}

		.margin{
			margin-left: 25px;
			margin-right: 25px;
		}

		}


		@media only screen and (max-width: 480px) {
		body {
		    width:auto!important
		}

		table[class="col1"] {
		    width:100%;
		}

		table[class="col2"] {
		    width:100%;
		    text-align:left
		}

		table[class="col3"] {
		    width:100%;
		    text-align:center
		}

		table[class="col3_one"] {
		    width:auto;
		    text-align:center;
		    margin: 0 0 20px 0;
		}

		table[class="col-600"] {
		    width:auto
		}

		table[class="insider"] {
		    width:auto !important
		}

		img[class="images-style"] {
		    width:100%
		}


		.button { width: 40%; display: block; }
		a.read-more { text-align: center; display: block;}

		}


		/* OUTLOOK CLASS*/
		.ExternalClass {
		    background-color:#fff;
		    width:100%;
		}

		.ExternalClass,.ExternalClass font,.ExternalClass td,.ExternalClass p,.ExternalClass span,.ExternalClass div {
		    line-height:100%;
		}

		.ReadMsgBody {
		    width:100%;
		    background-color:#fff;
		}


		/* YAHOO MAIL CLASS */
		.yshortcuts,.yshortcuts a,.yshortcuts a:link,.yshortcuts a:visited,.yshortcuts a:hover,.yshortcuts a span {
		    border-bottom:none!important;
		}

		/* MAILCHIMP CLASS */
		.default-edit-image {
		    height:20px;
		}


	</style>


	<meta name="robots" content="noindex,follow" />
	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

	<!-- START HEADER/BANNER -->
			<tr>
				<td align="center">
					<table class="col-600" width="600" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
							<td align="center"  valign="top" style="background-size:cover; background-position:top;height:auto;">
								<table class="col-600" width="600" height="auto" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td height="40"></td>
									</tr>
									<tr>
										<td align="center" style="line-height: 0px;">
											<a href="http://krupet.com"><img style="display:block; line-height:0px; font-size:0px; border:0px;" src="http://localhost/git_krupet/assets/frontend/images/logo1.png"  alt="Krupet" /></a>
										</td>
									</tr>
									<tr>
										<td align="center" style="font-family:HelveticaNeue-Medium,Helvetica,Arial,sans-serif; font-size:15px; color:#767777; line-height:24px; font-weight: 300;">
											Your Guide to Wellness
										</td>
									</tr>
									<tr>
										<td height="50"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
        <?php foreach($data as $row){ ?>   
			<?php 
				$go="tip-detail";
				if($row->id_category==2){
					$go="news-detail";
				}

			?>
			<tr>
				<td align="center">
					<table class="col-600" width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-left:10px; margin-right:10px;">
						<tr>
							<td align="center">
								<table class="col2" width="262" border="0" align="right" cellpadding="0" cellspacing="0">
									<tr>
										<td align="center" style="line-height:0px;">
											<a href="<?php echo base_url();?>kh/<?php echo $go;?>/<?php echo $row->slug; ?>">
												<img style="display:block; line-height:0px; font-size:0px; border:0px;" class="images_style" src="<?php echo base_url().$row->image; ?>" width="252" height="168" />
											</a>
										</td>
									</tr>
								</table>
								<table width="325" border="0" align="left" cellpadding="0" cellspacing="0" class="col2" style="">
									<tr>
										<td align="center">
											<table class="insider" width="308" border="0" align="left" cellpadding="0" cellspacing="0">
												<tr align="left">
													<td style="font-family:HelveticaNeueBold,Helvetica,Arial,sans-serif; font-size:21px; color:#D12026; line-height:30px;"><a href="<?php echo base_url();?>kh/<?php echo $go;?>/<?php echo $row->slug; ?>" target="_blank" style="color:#D12026;text-decoration:none"><?php echo $row->kh_title ?></a></td>
												</tr>

												<tr>
													<td height="5"></td>
												</tr>
												<tr>
													<td style="font-family:HelveticaNeue-Medium,Helvetica,Arial,sans-serif; font-size:18px; color:#757575; line-height:24px;">
														<?php echo $row->kh_pre_content ?>
														<a href="<?php echo base_url();?>kh/<?php echo $go;?>/<?php echo $row->slug; ?>" target="_blank" style="color:#D12026;text-decoration:none"> អានបន្ត &gt;&gt;</span>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td align="center">
					<table class="col-600" width="600" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-left:10px; margin-right:10px;">
						<tr>
							<td height="30" width="600" style="border-bottom:1px solid #dbd9d9"></td>
						</tr>
					</table>
				</td>
			</tr>
		<?php } ?>

		<!--:::::::::::::::::::::::::::::::::::::::::::::::::>>Facebook Like -->
			<tr>
				<td align="center">
					<table class="col-600" width="600" align="center" width="600" border="0" cellspacing="0" cellpadding="0" style="margin-left:10px;margin-right:10px" bgcolor="#ffffff">
						<tr>
							<td height="20"></td>
						</tr>
						<tr>
							<td>
								<table class="col-600" width="600" border="0" align="center" cellpadding="0" cellspacing="0">
									<tr>
										<td align="center" style="font-family:HelveticaNeueBold,Helvetica,Arial,sans-serif; font-size:20px; color:#D12026; line-height:24px; font-weight: bold;">"Our health is everything."<span style="font-family:HelveticaNeue-Medium,arial;font-size:15px;color:#767777"> -From Krupet.com <br/> </span></td>
									</tr>
									<tr>
										<td height="20"></td>
									</tr>


									<tr>
										<td align="center" style="font-family:HelveticaNeue-Medium,Helvetica,Arial,sans-serif; font-size:14px; color:#fff; line-height: 1px; font-weight: 300;">
											<table width="300" border="0" align="center" cellpadding="0" cellspacing="0"   style="border-radius:5px;" bgcolor="">
												<tr>			
													<td width="310" height="50" align="center" style="font-size:15px;color:#2b3c4d;line-height:18px">															
														<a target="_blank" href="https://www.facebook.com/Krupetcom-137344823272389/" style="text-decoration:none;">
															<img src="http://localhost/git_krupet/uploads/blogs/join-us-facebook-button.png" width="100%">
														</a>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>	
							</td>
						</tr>
						<tr>
							<td height="20"></td>
						</tr>
					</table>
				</td>
			</tr>
					

			


			