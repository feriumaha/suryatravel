<?php
include("connect.php");
$product = $_GET['product'];
$product_id = $_GET['product_id'];
$id_produk_umroh = base64_decode($product_id);

$get_produk = mysqli_query($con,"select * from produk_umroh where id_produk_umroh = '$id_produk_umroh' ");
$print_produk = mysqli_fetch_array($get_produk);
?>
<!DOCTYPE html>
<html >
<head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="generator" content="Mobirise v4.7.2, mobirise.com">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
    <link rel="icon" type="image/png" sizes="16x16" href="jamaah/dashboard/assets/images/favicon.png">
    <meta name="description" content="Web Page Builder Description">
    <title>Surya Travel | <?php echo $product; ?></title>
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
    include 'nav.php';
?>

<section class="mbr-section content5 cid-rRi74QRx7K mbr-parallax-background" id="content5-i">

        

        

        <div class="container">
                <div class="media-container-row">
                        <div class="title col-12 col-md-8">
                                <h2 class="align-left mbr-bold mbr-white pb-3 mbr-fonts-style display-2 align-center"><span style="font-weight: normal;">
                                    <?php echo $product; ?></span></h2>                               
                                
                        </div>
                </div>
        </div>
</section>

<section class="mbr-section content6 cid-rRi7W5FbUI" id="content6-k">
        
         
        
        <div class="container">
                <div class="media-container-row">
                        <div class="col-12">
                                <div class="media-container-row">
                                    <div class="col-8">
                                        <table class="table">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <img src="images/default_special_promo.jpg">
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <ul class="nav nav-tabs">
                                            <li class="nav-item">
                                              <a class="nav-link active" data-toggle="tab" href="#home">Syarat dan Ketentuan</a>
                                            </li>
                                            <li class="nav-item">
                                             <a class="nav-link" data-toggle="tab" href="#menu1">Dokumen Peserta</a>
                                            </li>
                                            <li class="nav-item">
                                             <a class="nav-link" data-toggle="tab" href="#menu2">Rencana Perjalanan</a>
                                            </li>
                                        </ul>
                                        <div class="tab-content">
                                         <div id="home" class="container tab-pane active">
                                             <?php echo $print_produk['syarat_dan_ketentuan']; ?>
                                         </div>
                                         <div id="menu1" class="container tab-pane fade">
                                             <?php echo $print_produk['dokumen_peserta']; ?>
                                         </div>
                                         <div id="menu2" class="container tab-pane fade">
                                             <?php echo $print_produk['rencana_perjalanan']; ?>       
                                         </div>
                                        </div>
                                    </div>
                                    <div class="col-4">
                                        <table class="table" style="width: 100%;border: 1px solid #aaa;border-radius: 50%">
                                            <tbody>
                                               <?php 
                                                $get_harga = mysqli_query($con,"select * from harga_produk_umroh where id_produk_umroh = '$id_produk_umroh' ");
                                                while($print_harga=mysqli_fetch_array($get_harga)){
                                                    echo"
                                                    <tr>
                                                        <td>$print_harga[tipe_kamar]</td>
                                                        <td>: <span class='text-secondary mbr-bold'>Rp $print_harga[harga],-</span></td>
                                                    </tr>
                                                    ";
                                                }
                                               ?>
                                                <tr>
                                                    <td>
                                                        Durasi<br>
                                                        <b><?php echo $print_produk['durasi']; ?> Hari</b>
                                                    </td>
                                                    <td>
                                                       <?php
                                                        $get_maskapai = mysqli_query($con,"select * from produk_umroh_maskapai where id_produk_umroh = '$id_produk_umroh' ");
                                                        while($print_mskp = mysqli_fetch_array($get_maskapai)){
                                                        $get_logo = mysqli_query($con,"select * from maskapai where id_maskapai = '".$print_mskp['id_maskapai']."' ");
                                                        while($print_logo = mysqli_fetch_array($get_logo)){
                                                            echo"
                                                            <img src='$print_logo[url]' style='width:auto;height:62.3px;'>
                                                            ";
                                                        }}                                                      
                                                       ?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        Tanggal Keberangkatan:<br>
                                                        <span class="mbr-bold"><?php echo $print_produk['start_date']; ?></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="2">
                                                        Hotel:<br>
                                                        <?php
                                                        $get_hotel = mysqli_query($con,"select * from produk_umroh_hotel where id_produk_umroh = '$id_produk_umroh' ");
                                                        while($print_hotel = mysqli_fetch_array($get_hotel)){
                                                        $get_htl = mysqli_query($con,"select * from hotel where id_hotel = '".$print_hotel['id_hotel']."' ");
                                                        while($print_htl = mysqli_fetch_array($get_htl)){
                                                            echo"
                                                            <span class='mbr-bold'>$print_htl[kota]</span>: $print_htl[nama_hotel] (<span class='text-secondary'>Bintang $print_htl[bintang]</span>)
                                                            ";
                                                        }}                                                     
                                                       ?>                                                    
                                                    </td>
                                                </tr>
                                                <!--<tr>
                                                    <td colspan="2" style="padding: 0px;">
                                                        <button class="btn btn-sm btn-secondary display-4 btn-block" style="margin: 0px;padding: 20px;">
                                                            Pesan Sekarang
                                                        </button>
                                                    </td>
                                                </tr>-->
                                            </tbody>
                                        </table>
                                       
                                    </div>
                                </div>
                        </div>
                </div>
        </div>
</section>

<?php
    include 'footer.php';
?>

    <script src="assets/web/assets/jquery/jquery.min.js"></script>
    <script src="assets/popper/popper.min.js"></script>
    <script src="assets/tether/tether.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/smoothscroll/smooth-scroll.js"></script>
    <script src="assets/dropdown/js/script.min.js"></script>
    <script src="assets/touchswipe/jquery.touch-swipe.min.js"></script>
    <script src="assets/parallax/jarallax.min.js"></script>
    <script src="assets/theme/js/script.js"></script>
    
    
</body>
</html>
<?php
mysqli_close($con);
?>