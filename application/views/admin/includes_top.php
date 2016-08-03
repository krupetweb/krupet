
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/font-icons/entypo/css/entypo.css">
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/bootstrap.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/neon-core.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/neon-theme.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/neon-forms.css">

<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/custom.css">



<?php if ($text_align == 'right-to-left') : ?>
    <link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/neon-rtl.css">
<?php endif; ?>
<script src="<?php echo base_url();?>assets/backend/js/jquery-1.11.0.min.js"></script>

        <!--[if lt IE 9]><script src="assets/backend/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link rel="shortcut icon" href="<?php echo base_url();?>assets/backend/images/favicon.png">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/css/font-icons/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/js/vertical-timeline/css/component.css">
<link rel="stylesheet" href="<?php echo base_url();?>assets/backend/js/datatables/responsive/css/datatables.responsive.css">



<script src='https://cdn.tinymce.com/4/tinymce.min.js'></script>
<script src="<?php echo base_url();?>assets/backend/js/finder_config.js" type="text/javascript"></script>

<script>
    function checkDelete()
    {
        var chk=confirm("Are You Sure To Delete This !");
        if(chk)
        {
          return true;  
        }
        else{
            return false;
        }
    }
</script>