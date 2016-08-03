<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE HTML>
<html lang='en-US' >
    <head>
    <?php
          $lang="kh";
          if($this->uri->segment(1)=='en'){
            $lang="en";
          }  
        ?>
         <?php
        //$lang='en';             
        $url_array=explode("/", uri_string());
        $current_lang=$url_array[0];
        $flag='';
        $current_url=implode("/",$url_array);
        $current_change_url='';

        if($lang=='en'){
          $flag='khm.png';
          $url_array[0]='kh';
        }else{
          $flag='eng.png';
          $url_array[0]='en';
        }
        $current_change_url=implode("/",$url_array);
      ?>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title>Krupet | <?php if(isset($title)) echo $title; ?><?php if(isset($page_title)) echo $page_title; ?></title>
      <?php include('include_top.php') ?>
    </head>
    <body>
        <?php include('pages/parts/fb_library.php') ?>
        <?php include('pages/parts/functions.php') ?>
      	<?php include('header.php') ?>
  	  	<?php include('pages/'.$page_name.'.php') ?>
      	<?php include('footer.php') ?>
      	<?php include('include_bottom.php') ?>
    </body>
</html>
