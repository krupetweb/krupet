 <style>
 	table tbody tr{
 		cursor:move;
 	}
 	table{

	  position: relative;
 	}
 	.placeholder{
 		background:none;
 	}

 	body.dragging, body.dragging * {
	  cursor: move !important;
	}

	.dragged {
	  position: absolute;
	  opacity: 0.7;
	  z-index: 2000;
	}

	li.placeholder {
	  list-style: none;
	  width: 100%;
	  height: 7px;
	  background: none;
	}
	li.placeholder:before {
	  position: absolute;
	  list-style: none;
	  width: 100%;
	  height: 3px;
	  content: "";
	  margin-top: 2px;
	  height: 3px;
	  background: red;
	}

 </style>

<script src="<?php echo base_url();?>assets/backend/js/jquery-sortable.js"></script>
<script>
//::::::::::::::::::::::::::::::::>> Shortable


	$( document ).ready(function() {
		
		var group = $(".limited_drop_targets").sortable({
		  group: 'limited_drop_targets',
		  containerSelector: 'table',
		  itemPath: '> tbody',
		  itemSelector: 'tr',
		  onDrop: function ($item, container, _super) {
		    	var sorted = group.sortable("serialize").get();
		    	//sorted = sorted.split(',');
		    	//console.log(sorted[0].split(','));

		    _super($item, container);

		    url='<?php echo base_url()."admin/update_data_order/tbl_".$page_name; ?>';
			$.ajax({
				url: url,
				method: "POST", 
				data:{
					"order":sorted[0].split(',')},
				success: function(response)
				{
					toastr.success(response);
				}
		});
		  },
		  serialize: function (parent, children, isContainer) {
		    return isContainer ? children.join() : parent.attr("data-id");
		  },
		  tolerance: 6,
		  distance: 10
		});

	});
	
</script>


