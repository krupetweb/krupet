
<hr />
<div class="row">
	<div class="col-md-12">
		<div class="tabs-vertical-env">
			<div class="tab-content">
				<div class="tab-pane active">
					<div class="row">
						<div class="col-md-12">
							<div class="panel panel-primary" data-collapsed="0">
					        	<div class="panel-heading">
					            	<?php include('slides_fillter.php') ?>
					            </div>
								<div class="panel-body">
				                   <div id="vehicle_container">    
					                   
					                    
					                </div>

					            </div>
					        </div>
					    </div>
					</div>

					
				</div>
			</div>
			
		</div>	
	
	</div>
</div>
<script>
$( document ).ready(function() {
    slides_fillter($('#my_fillter').val())
});
</script>












