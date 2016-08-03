<div class="row">
	<div class="col-md-12">
		
		<div class="tabs-vertical-env">
			
			<?php 
				include('hospital_tab.php')
			?>
			
			
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
								<div class="panel-heading">
									<div class="panel-title">
										<i class="entypo-plus-circled"></i>Hospital Rating Report
									</div>
								</div>
								
								<div class="panel-body">
									<table class="table table-bordered " >
										
										<tbody>
												<tr>
												   <td>Total Raters</td>
												   <td><?php echo $data['num_of_raters']; ?></td>
												</tr>
												<tr>
												   <td>Total Ratings</td>
												   <td><?php echo $data['num_of_ratings']; ?> (<?php echo $data['num_of_recommends']; ?> Recomended)</td>
												</tr>
												<tr>
												   <td>Scoring</td>
												   <td class="text-center">
                                                        <table class="table table-bordered">
                                                                <tr>
                                                                    <td><b>Score</b></td><td colspan=2><b>Num. of Ratings for each factor</b></td>
                                                                </tr>
                                                                <tr><td>0</td><td><?php echo $data['num_of_score_0']; ?></td><td><?php echo $data['num_of_score_0']*0; ?></td><tr>
                                                                <tr><td>1</td><td><?php echo $data['num_of_score_1']; ?></td><td><?php echo $data['num_of_score_1']*1; ?></td><tr>
                                                                <tr><td>2</td><td><?php echo $data['num_of_score_2']; ?></td><td><?php echo $data['num_of_score_2']*2; ?></td><tr>
                                                                <tr><td>3</td><td><?php echo $data['num_of_score_3']; ?></td><td><?php echo $data['num_of_score_3']*3; ?></td><tr>
                                                                <tr><td>4</td><td><?php echo $data['num_of_score_4']; ?></td><td><?php echo $data['num_of_score_4']*4; ?></td><tr>
                                                                <tr><td>5</td><td><?php echo $data['num_of_score_5']; ?></td><td><?php echo $data['num_of_score_5']*5; ?></td><tr>
                                                                <tr><td class='text-right'>Total Score</td><td colspan=2><strong style="color:red"><?php echo $data['total_score']; ?></strong></td><tr>
                                                                <tr><td class='text-right'>Scoring Factors</td><td colspan=2><strong style="color:red"><?php echo $data['num_of_score_factors']; ?></strong></td><tr>
                                                                <tr><td class='text-right'>Grade</td><td colspan=2><strong style="color:red"><?php $grade=0; if($data['num_of_score_factors']!=0) $grade=$data['total_score']/$data['num_of_score_factors']; echo $grade; ?></strong></td><tr>
                                                                <?php 
                                                                    $num_of_stars=0;
                                                                    if($grade>=0.5 && $grade<1.5){
                                                                        $num_of_stars=1;
                                                                    }else  if($grade>=1.5 && $grade<2.5){
                                                                        $num_of_stars=2;
                                                                    }else  if($grade>=2.5 && $grade<3.5){
                                                                        $num_of_stars=3;
                                                                    }else  if($grade>=3.5 && $grade<4.5){
                                                                        $num_of_stars=4;
                                                                    }else  if($grade>=4.5){
                                                                        $num_of_stars=5;
                                                                    }

                                                                ?>
                                                                <tr><td class='text-right'>Num. of Stars</td><td colspan=2><strong style="color:red"><?php echo $num_of_stars; ?></strong></td><tr>
                                                        </table>
												   </td>
												</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
							
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
