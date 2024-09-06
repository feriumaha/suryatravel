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
  <title>Surya Travel | Galeri</title>
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

<section class="engine"><a href="https://mobirise.me/h">how to create a web page</a></section><section class="mbr-gallery mbr-slider-carousel cid-rPDAxT4HqD" id="gallery2-7">

    

    <div class="container">
        <div><!-- Filter -->
        <div class="mbr-gallery-filter container gallery-filter-active">
            <ul buttons="0">
                <li class="mbr-gallery-filter-all"><a class="btn btn-md btn-primary-outline active display-7" href="">Semua</a></li>
            </ul>
        </div><!-- Gallery -->
        <div class="mbr-gallery-row">
            <div class="mbr-gallery-layout-default">
                <div>
                    <div>
                       <?php 
                       $get_album = mysqli_query($con,"select * from galeri");
                       while($print_album=mysqli_fetch_array($get_album)){
                                $get_photo = mysqli_query($con,"select * from galeri_foto where id_album = '".$print_album['id_galeri']."' ");
                                while($print_photo = mysqli_fetch_array($get_photo)){
                                 echo"
                                 <div class='mbr-gallery-item mbr-gallery-item--p2' data-video-url='false' data-tags='$print_album[nama_galeri]'>
                                 <a href='galeri/$print_album[nama_galeri]/$print_photo[nama_file]' target='_blank' id='galeri/$print_album[nama_galeri]/$print_photo[nama_file]' class='view_data' data-slide-to='$print_photo[id_galeri_foto]' data-toggle='modal'>
                                    <img src='galeri/$print_album[nama_galeri]/$print_photo[nama_file]' alt='' title=''>
                                  <span class='icon-focus'></span>
                                </a>
                                </div>
                                    ";   
                                }
                                echo"
                           ";
                       }
                       ?>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
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