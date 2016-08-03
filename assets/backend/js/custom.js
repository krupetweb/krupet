	function change_published_icon(icon, field){
		val=0;
		published_icon=$("#"+icon);
		if(published_icon.hasClass("glyphicon-check")){
			published_icon.removeClass("glyphicon-check");
			published_icon.addClass("glyphicon-unchecked");
			val=0;
			
		}else{
			published_icon.addClass("glyphicon-check");
			published_icon.removeClass("glyphicon-unchecked");
			val=1;
		}
		$("#"+field).val(val);
	}
	
	function is_published(id, url){
		val=0;
		
		published_icon=$("#published_icon_"+id);
		
		if(published_icon.hasClass("glyphicon-check")){
			
			published_icon.removeClass("glyphicon-check");
			published_icon.addClass("glyphicon-unchecked");
			message="This data is set to be unpublished.";
			val=0;
			
		}else{
			
			published_icon.removeClass("glyphicon-unchecked");
			published_icon.addClass("glyphicon-check");
			message="This data is set to be published.";
			val=1;
		}

		//alert(url);
		
		$.ajax({
			method:"POST",
			url: url,
			data:{value:val},
			success: function(response)
			{
				//infomation_modal(message);
				toastr.success(message);
			}
		});
	}
	function is_featured(id, url){
		val=0;
		
		featured_icon=$("#featured_icon_"+id);
		
		if(featured_icon.hasClass("glyphicon-check")){
			
			featured_icon.removeClass("glyphicon-check");
			featured_icon.addClass("glyphicon-unchecked");
			message="This data is set to be unfeatured.";
			val=0;
			
		}else{
			
			featured_icon.removeClass("glyphicon-unchecked");
			featured_icon.addClass("glyphicon-check");
			message="This data is set to be featured.";
			val=1;
		}
		
		$.ajax({
			method:"POST",
			url: url,
			data:{value:val},
			success: function(response)
			{
				//infomation_modal(message);
				toastr.success(message);
			}
		});
	}
	