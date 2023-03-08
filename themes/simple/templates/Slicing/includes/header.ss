<header class="header" >
                
                <h1>Dasboard</h1>
                <div class="menu">
                    <div class="input-search" >
                        <img src="$ThemeDir/images/img/Dashboard/search.svg" alt="" >
                        <input type="text" placeholder="pencarian" >
                    </div>
                    <button id="notif">
                        <img src="$ThemeDir/images/img/Dashboard/bell.svg" alt="">
                    </button>
                    <button id="store" type="button" data-bs-toggle="dropdown" aria-expanded="false"><img src="$ThemeDir/images/img/Dashboard/store-pusat.svg" alt=""><p>Pusat</p></button>
                    <div class="dropdown-menu">
                        <div class="wrap-dropdown">
                            <ul>
                                <li>
                                    <div class="wrap">
                                        <img src="$ThemeDir/images/img/Dashboard/store-pusat.svg" alt="">
                                        <p>Ratu Gurih Seafood Mar...</p>
                                        <span class="tooltiptext"><p>Ratu Gurih Seafood Market dan Resto</p></span>
                                        <div class="status-aktif"><p>Aktif</p></div>
                                    </div>
                                </li>
                                <li><div class="wrap">
                                    <img src="$ThemeDir/images/img/Dashboard/store-pusat.svg" alt="">
                                    <p>Cabang 2</p>
                                    <span class="tooltiptext"><p>Cabang 2</p></span>
                                    <div class="status-aktif"><p>Aktif</p></div>
                                    
                                </div></li>
                                <li><div class="wrap">
                                    <img src="$ThemeDir/images/img/Dashboard/store-pusat.svg" alt="">
                                    <p>Cabang 3</p>
                                    <span class="tooltiptext"><p>Cabang 2</p></span>
                                    <div class="status-non-aktif">
                                        <p>Menunggu Pembayaran</p>
                                    </div>
                                </div></li>
                            </ul>
                            <button>
                                <img src="$ThemeDir/images/img/Dashboard/plus-circle.svg" alt="">
                                <p>
                                    Tambah Cabang
                                </p>
                            </button>
                        </div>
                    </div>
                    
                </div>
            </header>

            <script>
                const wrapDropdown = document.querySelector('.wrap-dropdown .wrap p');
wrapDropdown.addEventListener('mouseenter', function() {
  console.log('Kursor masuk ke dalam div wrap-dropdown');
  // tambahkan kode untuk menampilkan informasi di sini
});

wrapDropdown.addEventListener('mouseleave', function() {
  console.log('Kursor keluar dari div wrap-dropdown');
  // tambahkan kode untuk menyembunyikan informasi di sini
});

            </script>

            
              