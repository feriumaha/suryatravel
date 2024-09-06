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
  <meta name="description" content="Website Maker Description">
  <title>Surya Travel | Brochure</title>
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
<?php
include("nav.php");    
?>

<section class="engine"><a href="https://mobirise.me/f">simple site builder</a></section><section class="mbr-section content4 cid-rRigkZUQTY" id="content4-1b">

    

    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center pb-3 mbr-fonts-style display-2">
                    Download Brosur dan Majalah</h2>
                <h3 class="mbr-section-subtitle align-center mbr-light mbr-fonts-style display-5"></h3>
                
            </div>
        </div>
    </div>
</section>

<section class="features3 cid-rRigf1kgS2" id="features3-1a">
    <div class="container">
        <div class="media-container-row">
           <?php
           $get_brosur = mysqli_query($con,"select * from brosur");
            while($print_brosur=mysqli_fetch_array($get_brosur)){
             echo"
             <div class='card p-3 col-12 col-md-6 col-lg-3'>
                <div class='card-wrapper'>
                    <div class='card-img'>
            ";
                if($print_brosur['type_file'] == "pdf"){
                    echo"
                    <img src='assets/pdf.png' width='100px' height='auto' alt='$print_brosur[nama_file]'>
                    ";
                }
                if($print_brosur['type_file'] == "jpg" || $print_brosur['type_file'] == "jpeg"){
                    echo"
                    <img src='assets/jpg.png' width='100px' height='auto' alt='$print_brosur[nama_file]'>
                    ";
                }
            echo"
                    </div>
                    <div class='card-box'>
                        
                        
                    </div>
                    <div class='mbr-section-btn text-center'><a href='brosur/$print_brosur[nama_file]' target='_blank' class='btn btn-primary display-4'>
                            $print_brosur[nama_file]</a></div>
                </div>
            </div>
             ";   
            }
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
  <script src="assets/formoid/formoid.min.js"></script>
  
  
</body>
</html>