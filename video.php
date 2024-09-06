<?php
include("connect.php");
?>
<!DOCTYPE html>
<html >
<head>
  
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.7.2, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="icon" type="image/png" sizes="16x16" href="jamaah/dashboard/assets/images/favicon.png">
  <meta name="description" content="">
  <title>Surya Travel | Videos</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/soundcloud-plugin/style.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/gallery/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<?php 
include("nav.php");    
?>

<section class="engine"><a href="#"></a></section><section class="mbr-gallery mbr-slider-carousel cid-rPDAxT4HqD" id="gallery2-7">

    

    <div class="container">
        <div><!-- Filter -->
        <div class="media-container-row">
                <div>
                    <div>
                       <?php 
                       $get_album = mysqli_query($con,"select * from galeri");
                       while($print_album=mysqli_fetch_array($get_album)){
                                $get_video = mysqli_query($con,"select * from galeri_video where id_album = '".$print_album['id_galeri']."' ");
                                
                                while($print_video = mysqli_fetch_array($get_video)){
                                 echo"
                                 <div class='card p-3 col-12 col-md-6 col-lg-3'>
                                    <div class='card-wrapper'>
                                     $print_video[script_embed]
                                    </div>
                                </div>
                                
                                    ";   
                                }
                                
                       }
                       ?>
                    </div>
                </div>
                <div class="clearfix"></div>
          
        </div>  
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
  <script src="assets/dropdown/js/script.min.js"></script>
  <script src="assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/masonry/masonry.pkgd.min.js"></script>
  <script src="assets/imagesloaded/imagesloaded.pkgd.min.js"></script>
  <script src="assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/gallery/player.min.js"></script>
  <script src="assets/gallery/script.js"></script>
  <script src="assets/slidervideo/script.js"></script>
  
  
</body>
</html>
<?php
mysqli_close($con);
?>