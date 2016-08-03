
	  tinymce.init({
      selector: '.to-be-editor',
      height: 500,
      plugins: [
        'advlist autolink lists link image charmap print preview anchor',
        'searchreplace visualblocks code fullscreen',
        'insertdatetime media table contextmenu paste code'
      ],
      toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
      content_css: [
        '//fast.fonts.net/cssapi/e6dc9b99-64fe-4292-ad98-6974f93cd2a2.css',
        '//www.tinymce.com/css/codepen.min.css'
      ],
      relative_urls : false,
      remove_script_host : true,
      document_base_url : "http://localhost/git_krupet/",
      file_browser_callback : elFinderBrowser
    });


	function elFinderBrowser (callback, value, meta) {
      
      tinymce.activeEditor.windowManager.open({
        file: 'http://localhost/git_krupet/editor/elfinder/elfinder.html',// use an absolute path!
        title: 'elFinder 2.0',
        width: 1200,  
        height: 700,
        resizable: 'yes'
      }, {
        oninsert: function (file, elf) {
          var url, reg, info;

          // URL normalization
          url = file.url;
          //alert(url);
          $( ".mce-textbox:first-child" ).val(url);
     
        }

      });
      return false;
  }