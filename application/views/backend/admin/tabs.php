				<?php 
					foreach($tabs as $items){
						echo '<li class="'.$items['active'].'">
								<a href="'.base_url().$items['link'].'">
									<i class="entypo-dot"></i>'.$items['name'].'
								</a>
							</li>';
					}
				?>