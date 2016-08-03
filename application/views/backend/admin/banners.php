	
			   
			   <br><br>
			   
				<table class="table table-bordered datatable" id="table_export">
                    <thead class="text-center">
                        <tr>
                            <th width="80">#</th>
                            <th>Page Title</th>
							<th>Banner</th>
							<th>Modified Date</th>
							<th></th>
                        </tr>
                    </thead>
                    <tbody>
						<?php $i=1; ?>
						<?php foreach($data as $row){ ?>
							<tr>
							   <td><?=$i?></td>
							   <td><?=$row->name?></td>
							   <td><img src="<?=base_url().$row->banner?>" class="img img-responsive thumbnail" /></td>
							   <td><?=$row->modified_dt;?></td>
							   <td>
									<a href="<?php echo base_url(); ?>admin/banner_form/<?php echo $row->id; ?>"  class="btn btn-primary">
							             <i class="entypo-cog" ></i>View Edit
							        </a> 
							   </td>
							</tr>
							<?php $i++?>
						<?php } ?>
                    </tbody>
                </table>
                