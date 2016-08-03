<?php
	$system_name        =	"Krupet";
	$system_title       =	"Krupet";
	$text_align         =	"";
?>
<!DOCTYPE html>
<html lang="en" dir="<?php if ($text_align == 'right-to-left') echo 'rtl';?>">
<head>
	
	<title style="text-transform: capitalize;"><?php echo str_replace("_", " ", $term);?>  | <?php echo $system_title;?></title>
    
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Ekattor School Manager Pro - Creativeitem" />
	<meta name="author" content="Creativeitem" />

	<?php include 'includes_top.php';?>
	
</head>

<body class="page-body" >
	<div class="page-container <?php if ($text_align == 'right-to-left') echo 'right-sidebar';?>" >
		
		<?php include 'navigation.php';?>	
		
		<div class="main-content">
			<?php include 'header.php';?>

           <h3 style=""> <i class="entypo-right-circled"></i>  <b style="text-transform: capitalize;"><?php echo str_replace("_", " ", $term) ;?></b></h3>
           <hr />
			<?php include 'pages/'.$term.'/'.$page.'.php';?>
			<?php include 'footer.php';?>
		</div>
		
        	
	</div>
    <?php include 'modal.php';?>
    <?php include 'includes_bottom.php';?>
</body>
</html>