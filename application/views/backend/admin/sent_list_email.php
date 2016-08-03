
           
			
			<?php 
				if($receiver->lan=='kh'){
					echo $kh_mail;
				}else{
					echo $en_mail;
				}
			?>			


			
			<!--:::::::::::::::::::::::::::::::::::::::::::::::::>>Footer Description-->		
			<tr>
				<td align="center">
					<table width="600" class="col-600" align="center" border="0" cellspacing="0" cellpadding="0" style=" margin-left:10px; margin-right:10px;">
						<tr>
							<td>
								<table class="col2" width="600" border="0" align="left" cellpadding="0" cellspacing="0">
									<tr>
										<td align="center">
											<table class="insider" width="600" border="0" align="center" cellpadding="0" cellspacing="0">
												<tr>
													<td height="0"></td>
												</tr>
												<tr>
													<td style="text-align:left;font-family:HelveticaNeue-Medium,Helvetica,Arial,sans-serif;font-size:12px;line-height:16px;color:#767777" align="center">
														<!--Misssion -->
														<p style="font-family:Arial, Helvetica, sans-serif; font-size:11px; font-weight:normal; color:#757575; line-height:15px; padding:15px 10px 15px;">
															Krupet's mission is to be your most trusted ally in your pursuit of health and well-being.<br>
															You can depend on us to provide expert content along with genuine caring. Both of which will support, guide, and inspire you toward the best possible health outcomes for you and your family.
														</p>
														<!--Unscripber -->
														<p>
															You are receiving this email because of your relationship with Krupet.com.<br>
															If you do not wish to receive any more emails, you can <a style="color:#D12026;text-decoration:none;" href="<?php echo base_url().$receiver->lan; ?>/unsubscribe/<?php echo $receiver->unactive_code;?>" >unsubscribe here</a>.
														</p>
														
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td height="30"></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>	

		</table>
	</body>
</html>


 