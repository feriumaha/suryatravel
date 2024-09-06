<?php
include("connect.php");
?>
<!DOCTYPE html>
<html >
<head>
  <!-- Site made with Mobirise Website Builder v4.7.2,  -->
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.7.2, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="icon" type="image/png" sizes="16x16" href="jamaah/dashboard/assets/images/favicon.png">
  <meta name="description" content="">
  <title>Surya Travel</title>
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons-bold/mobirise-icons-bold.css">
  <link rel="stylesheet" href="assets/web/assets/mobirise-icons/mobirise-icons.css">
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/soundcloud-plugin/style.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/dropdown/css/style.css">
  <link rel="stylesheet" href="assets/socicon/css/styles.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  
  
</head>
<body>
<?php
    include 'nav.php';
?>

<section class="carousel slide cid-rQFexSCaGL" data-interval="false" id="slider1-c">

    

    <div class="full-screen">
        <div class="mbr-slider slide carousel" data-pause="true" data-keyboard="false" data-ride="carousel" data-interval="4000">
            <ol class="carousel-indicators">
                <li data-app-prevent-settings="" data-target="#slider1-c" class=" active" data-slide-to="0"></li>
                <li data-app-prevent-settings="" data-target="#slider1-c" data-slide-to="1"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item slider-fullscreen-image active" data-bg-video-slide="false" style="background-image: url(assets/images/1504006398955-2000x1335.jpg);">
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <div class="mbr-overlay"></div>
                            <img src="assets/images/1504006398955-2000x1335.jpg">
                            <div class="carousel-caption justify-content-center">
                                <div class="col-10 align-center">
                                    <h2 class="mbr-fonts-style display-1">
                                        TRAVEL UMROH TERBAIK<br><br>
                                        <strong><b>SURYA</b> TRAVEL</strong><br><br>
                                    </h2>
                                    <p class="lead mbr-text mbr-fonts-style display-5">
                                        Pastikan Kenyamanan Perjalanan <strong>Ibadah Umroh</strong> Anda Bersama <strong>Surya Travel</strong>
                                    </p>
                                    <div class="mbr-section-btn" buttons="0">
                                        <a class="btn  display-4 btn-secondary" href="promo">Pesan Sekarang</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item slider-fullscreen-image" data-bg-video-slide="https://www.youtube.com/watch?v=xpK4UGFEeSw">
                    <div class="mbr-overlay"></div>
                    <div class="container container-slide">
                        <div class="image_wrapper">
                            <img src="assets/images/2.jpg" style="opacity: 0;">
                            <div class="carousel-caption justify-content-center">
                                <div class="col-10 align-left">
                                    <h2 class="mbr-fonts-style display-1">Dokumentasi</h2>
                                    <p class="lead mbr-text mbr-fonts-style display-5">Perjalanan Umroh Ke-194 Bulan Desember Tahun 2019</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a data-app-prevent-settings="" class="carousel-control carousel-control-prev" role="button" data-slide="prev" href="#slider1-c">
                <span aria-hidden="true" class="mbri-left mbr-iconfont"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a data-app-prevent-settings="" class="carousel-control carousel-control-next" role="button" data-slide="next" href="#slider1-c">
                <span aria-hidden="true" class="mbri-right mbr-iconfont"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

</section>

<section class="features8 cid-rQFogjB3B2" id="features8-d">

    

    

    <div class="container">
        <div class="media-container-row">
            <?php
            $get_kategori = mysqli_query($con,"select * from kategori");
                while($print_kategori = mysqli_fetch_array($get_kategori)){
                 echo"
                 <div class='card  col-12 col-md-6 col-lg-4'>
                    <div class='card-img'>
                        <img src='kategori-icon/$print_kategori[icon]' style='width:150px;height:auto'>
                    </div>
                    <div class='card-box align-center'>
                        <h4 class='card-title mbr-fonts-style display-7'>
                        $print_kategori[nama_kategori]</h4>
                    
                        <div class='mbr-section-btn text-center'><a href='product-category?category=$print_kategori[nama_kategori]' class='btn btn-secondary display-4'>
                            Selengkapnya</a></div>
                    </div>
                </div>
                 ";                       
                }
            ?>
        </div>
    </div>
</section>

<section class="header7 cid-rQFyAfNkGk" id="header7-e">


    <div class="container">
        <div class="media-container-row">

            <div class="media-content align-right">
                <h1 class="mbr-section-title mbr-white pb-3 mbr-fonts-style display-2">
                    Haji Plus Surya Travel</h1>
                <div class="mbr-section-text mbr-white pb-3">
                    <p class="mbr-text mbr-fonts-style display-7">
                            • Proses mudah, ibadah khusuk, aman &amp; nyaman
                        <br>• Pembimbing terpercaya, sabar &amp; mengutamakan peribadatan jamaah
                        <br>• Hotel dekat &amp; bintang 5
                        <br>• Makanan full board (diutamakan menu masakan Indonesia)
                        <br>• Transportasi udara &amp; darat yang aman &amp; nyaman
                        <br>• Perlengkapan Haji &amp; Umroh terlengkap</p>
                </div>
                <div class="mbr-section-btn"><a class="btn btn-md btn-primary display-4" href="">Pesan Sekarang</a>
                        <a class="btn btn-md btn-white-outline display-4" href="">Selengkapnya</a></div>
            </div>

            <div class="mbr-figure" style="width: 100%;"><iframe class="mbr-embedded-video" src="https://www.youtube.com/embed/xpK4UGFEeSw?rel=0&amp;amp;showinfo=0&amp;autoplay=0&amp;loop=0" width="1280" height="720" frameborder="0" allowfullscreen></iframe></div>

        </div>
    </div>
</section>

<section class="features15 cid-rQFAjB415g" id="features15-f">

    

    
    <div class="container">
        <h2 class="mbr-section-title pb-3 align-center mbr-fonts-style display-2">Promo Spesial</h2>
        

        <div class="media-container-row container pt-5 mt-2">
<?php 
$get_product = mysqli_query($con,"select * from produk_umroh where status_tutup = '0' and tags='promo' ");        while($print_product = mysqli_fetch_array($get_product)){
        $product_id = base64_encode($print_product['id_produk_umroh']);
        echo"
        <div class='col-12 col-md-6 mb-4 col-lg-4'>
                <div class='card flip-card p-5 align-center'>
                    <div class='card-front card_cont'>
                        <img src='assets/images/mbr-1200x731.jpg' alt='Surya Travel' title=''>
                    </div>
                    <div class='card_back card_cont'>
                        <table>
                            <tbody>
                                <tr>
                                    <th colspan='2'>$print_product[nama_produk], $print_product[start_date]</th>
                                </tr>
                                <tr>
                                    <td>
                                        <p>
                                            Durasi<br>
                                            <b>$print_product[durasi] Hari</b>
                                        </p>
                                    </td>
                                    <td>
                                        <p>
                                            Mulai dari<br>
        ";
        $get_harga = mysqli_query($con,"select * from harga_produk_umroh where id_produk_umroh = '".$print_product['id_produk_umroh']."' and tipe_kamar = 'default' ");
         while($print_harga = mysqli_fetch_array($get_harga)){
                                                 
         function rupiah($angka){
	     $hasil_rupiah = "Rp " . number_format($angka,2,',','.');
	     return $hasil_rupiah;
         }
         $harga =  rupiah($print_harga['harga']);
         echo"<b>$harga</b>";
         }
        echo"
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan='2'>
        ";
        $get_maskapai = mysqli_query($con,"select * from produk_umroh_maskapai where id_produk_umroh = '".$print_product['id_produk_umroh']."' ");
     $print_mskp = mysqli_fetch_array($get_maskapai);
     $get_logo = mysqli_query($con,"select * from maskapai where id_maskapai = '".$print_mskp['id_maskapai']."' ");
      while($print_logo = mysqli_fetch_array($get_logo)){
      echo"
      <center><img src='$print_logo[url]' style='width: 60%;height: auto'></center>
      ";
      }
    echo"
                                          
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class='mbr-section-btn text-center'><a href='detail-product?product=$print_product[nama_produk]&product_id=$product_id' class='btn btn-secondary-outline display-4'>
                            Lihat Detail</a>
                        </div>
                    </div>
                </div>
            </div>
        ";
}
?>            
        </div>
</div></section>

<section class="features14 cid-rRhYNVaT98" id="features14-g">
    
    

    
    <div class="container align-center">
        <h2 class="mbr-section-title pb-3 mbr-fonts-style display-2">
            Mengapa Memilih Kami?</h2>
        <h3 class="mbr-section-subtitle pb-5 mbr-fonts-style display-5">
            • SuryaTravel memberikan layanan perjalanan wisata sejak tahun 2000 dan resmi terdaftar sebagai penyelenggara Haji Plus dan Umroh di Kementrian Agama RI.<br><br>
            • SuryaTravel berkomitmen kuat untuk selalu memberikan Layanan Prima, Tulus Ikhlas Sepenuh Hati.
        </h3>
        <div class="media-container-column">
            <div class="row justify-content-center">
                <div class="card p-4 col-12 col-md-6 col-lg-4">
                    <div class="media pb-3">
                        <div class="card-img align-self-center">
                            <span class="mbr-iconfont mbrib-cust-feedback"></span>
                        </div>
                        <div class="media-body">
                            <h4 class="card-title py-2 align-left mbr-fonts-style display-5">
                                Proses Mudah</h4>
                        </div>
                    </div>
                    <div class="card-box align-left">
                        <p class="mbr-text mbr-fonts-style display-7">
                           Pelayanan yang cepat dan profesional, memudahkan Anda berangkat</p>
                    </div>
                </div>

                <div class="card p-4 col-12 col-md-6 col-lg-4">
                <div class="media pb-3">
                    <div class="card-img align-self-center">
                        <span class="mbr-iconfont mbrib-users"></span>
                    </div>
                    <div class="media-body">
                        <h4 class="card-title py-2 align-left mbr-fonts-style display-5">
                                Pembimbing Terpercaya</h4>
                    </div>
                </div>
                    <div class="card-box align-left">
                        <p class="mbr-text mbr-fonts-style display-7">
                            Komitmen untuk melayani sepenuh hati, agar ibadah Anda nyaman dan khusuk.</p>
                    </div>
                </div>

                <div class="card p-4 col-12 col-md-6 col-lg-4">
                <div class="media pb-3">
                    <div class="card-img align-self-center">
                        <span class="mbr-iconfont mbrib-magic-stick"></span>
                    </div>
                    <div class="media-body">
                        <h4 class="card-title py-2 align-left mbr-fonts-style display-5">
                            Fasilitas Bintang 5</h4>
                    </div>
                </div>
                    <div class="card-box align-left">
                        <p class="mbr-text mbr-fonts-style display-7">
                           Fasilitas &nbsp;hotel, makanan, dan transportasi terbaik dengan biaya yang wajar.</p>
                    </div>
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
  <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
  <script src="assets/vimeoplayer/jquery.mb.vimeo_player.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/bootstrapcarouselswipe/bootstrap-carousel-swipe.js"></script>
  <script src="assets/mbr-flip-card/mbr-flip-card.js"></script>
  <script src="assets/ytplayer/jquery.mb.ytplayer.min.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/slidervideo/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>
  
  
</body>
</html>
<?php 
mysqli_close($con);
?>