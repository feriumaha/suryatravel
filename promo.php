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
    <meta name="description" content="Web Page Builder Description">
    <title>Surya Travel | Promo</title>
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
                                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1"><span style="font-weight: normal;">
                                        PROMO PRODUCT</span></h2>                               
                                
                        </div>
                </div>
        </div>
</section>

<section class="mbr-section content6 cid-rRi7W5FbUI" id="content6-k">
        
         
        
        <div class="container">
                <div class="media-container-row">
                        <div class="col-12">
                                <div class="media-container-row">
                                    <table class="table" style="width: 100%;border: 1px solid #aaa;border-radius: 50%">
                                        <tbody>
                                        <?php 
                                        $get_product = mysqli_query($con,"select * from produk_umroh where status_tutup = '0' and tags='promo' ");
                                        while($print_product = mysqli_fetch_array($get_product)){
                                            $product_id = base64_encode($print_product['id_produk_umroh']);
                                            echo"
                                           <tr>
                                                <th rowspan='3'>
                                                    <img src='images/default_special_promo.jpg' style='width: 200px;height: auto'>
                                                </th>
                                            </tr>
                                            <tr>
                                                <th colspan='4'>$print_product[nama_produk]</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    Durasi<br>
                                                    <b>$print_product[durasi] Hari</b>
                                                </td>
                                                <td>
                                                    Keberangkatan<br>
                                                    <b>$print_product[start_date]</b>
                                                </td>
                                                <td>
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
                                                </td>
                                                <td>
                                                ";
                                                $get_maskapai = mysqli_query($con,"select * from produk_umroh_maskapai where id_produk_umroh = '".$print_product['id_produk_umroh']."' ");
                                                $print_mskp = mysqli_fetch_array($get_maskapai);
                                                $get_logo = mysqli_query($con,"select * from maskapai where id_maskapai = '".$print_mskp['id_maskapai']."' ");
                                                while($print_logo = mysqli_fetch_array($get_logo)){
                                                    echo"
                                                    <img src='$print_logo[url]' style='width: 150px;height: auto'>
                                                    ";
                                                }
                                                echo"
                                                </td>
                                                <td class='mbr-section-btn text-center'>
                                                    <a href='detail-product?product=$print_product[nama_produk]&product_id=$product_id' class='btn btn-secondary display-4'>Lihat Detail</a>
                                                </td>
                                            </tr> 
                                            ";
                                        }
                                       ?>   
                                        </tbody>
                                    </table>
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