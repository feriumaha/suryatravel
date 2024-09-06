<section class="menu cid-rPDqv9b0T8" once="menu" id="menu1-0">
    <nav class="navbar navbar-expand beta-menu navbar-dropdown align-items-center navbar-fixed-top navbar-toggleable-sm">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <div class="hamburger">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
        </button>
        <div class="menu-logo">
            <div class="navbar-brand">
                <span class="navbar-logo">
                    <a href="//suryatravel.co.id">
                         <img src="assets/images/logo-122x60.jpg" alt="Surya Travel" title="" style="height: 3.8rem;">
                    </a>
                </span>
                
            </div>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav nav-dropdown" data-app-modern-menu="true">
                <li class="nav-item dropdown open">
                    <a class="nav-link link text-secondary dropdown-toggle display-4" href="javascrip:void" data-toggle="dropdown-submenu" aria-expanded="true">Umroh</a>
                    <div class="dropdown-menu">
                       <?php
                        $get_kategori = mysqli_query($con,"select * from kategori");
                        while($print_kategori = mysqli_fetch_array($get_kategori)){
                            echo"
                            <a class='text-secondary dropdown-item display-4' href='product-category?category=$print_kategori[nama_kategori]'>$print_kategori[nama_kategori]</a>
                            ";
                        }
                       ?>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-secondary display-4" href="promo">Promo</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-secondary display-4" href="brochure">Brosur</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-secondary display-4" href="gallery">Galeri</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-secondary display-4" href="video">Video</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link link text-secondary display-4" href="about-us">Tentang Kami</a>
                </li>
            </ul>
            <div class="navbar-buttons mbr-section-btn">
                <a class="btn btn-sm btn-secondary display-4" href="jamaah">Masuk</a>
            </div>
        </div>
    </nav>
</section>