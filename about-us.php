<?php
include("connect.php");
?>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.7.2, https://mobirise.com -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.7.2, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="icon" type="image/png" sizes="16x16" href="jamaah/dashboard/assets/images/favicon.png">
  <meta name="description" content="">
  <title>Tentang Kami</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/soundcloud-plugin/style.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<section class="mbr-section content5 cid-rRi74QRx7K mbr-parallax-background" id="content5-i">

        

        

        <div class="container">
                <div class="media-container-row">
                        <div class="title col-12 col-md-8">
                                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1"><span style="font-weight: normal;">
                                        ABOUT US</span></h2>                               
                                
                        </div>
                </div>
        </div>
</section>
<?php
include("nav.php");    
?>

<section class="engine"></section>
<section class="header11" style="background:white;" id="header11-a">
    <div class="container align-left">
        <div class="media-container-column mbr-parallax-background col-md-12">
            <?php
            $get_aboutus = mysqli_query($con,"select * from tentang_kami");
            $print = mysqli_fetch_array($get_aboutus);
            echo $print[konten];
            ?>
        </div>
    </div>
</section>
<?php
include("footer.php");    
?>

  <script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  
  
</body>
</html>
<?php
mysqli_close($con);
?>