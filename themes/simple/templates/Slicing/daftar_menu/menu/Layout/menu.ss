<% require themedCSS('menu') %>

<div class="Menu-content">
    <button class="back" onclick="location.href='menu';">
        <img src="$ThemeDir/images/img/login/arrow-left.svg" alt="">
        <p>Kembali</p>
    </button>
    <style>
        .wrap-sorting-hide, .filter-hide{
            display: none!important;
        }
    </style>
    <div class="wrap-sorting">
        <p>Tampilkan </p>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="width: 47px;
            height: 17px; background: none; border: none; border-bottom: 1px solid grey; display: flex;">
              <p style="background-color: black; margin: 0; font-weight: 500;
              font-size: 14px;
              line-height: 17px;">
                10
              </p>
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">10</a></li>
              <li><a class="dropdown-item" href="#">50</a></li>
              <li><a class="dropdown-item" href="#">100</a></li>
            </ul>
          </div>
        <p>data</p>
        <div class="button-wrap">

            <style>
                .img-sorting{
                    display: block!important;
                }
                .img-sorting-hide{
                    display: none!important;
                }
                .img-table{
                    display: none!important;
                }
                .img-table-hide{
                    display: block!important;
                }
                .menu-menu-hide{
                    display: none!important;
                }
                .menu-table-show{
                    display: block!important;
                }
            </style>
            <button class="change">
                <img class="img-sorting" src="$ThemeDir/images/img/menu/view-grid-add.svg" alt="">
                <img class="img-table" src="$ThemeDir/images/img/menu/view-list.svg" alt="">
            </button>
            <button class="menu">
                <img src="$ThemeDir/images/img/menu/plus-circle.svg" alt="">
                <p>Tambah Menu</p>
            </button>
            <button class="menu">
                <img src="$ThemeDir/images/img/menu/paper-airplane.svg" alt="">
                <p>Transfer Data</p>
            </button>
        </div>
    </div>
    <div class="filter">
        <button>
            <img src="$ThemeDir/images/img/menu/filter.svg" alt="">
        </button>
    </div>

    <!-- tabel ditampilkan ketika user menekan menu menu -->
    <% include Slicing/daftar_menu/menu/include/list_menu %>

    <!-- tabel ditampilkan ketika user menekan menu table -->
    <% include Slicing/daftar_menu/menu/include/tabel %>

    <!-- tampilkan view ketika user meneksan aksi/view -->
    <style>
        .input-content-show{
            display: block!important;
        }

    </style>

    <div class="input-content">
        <div class="baris1">
            <div class="gambar">
                <p>Gambar</p>
                <img src="$ThemeDir/images/img/menu/Mask group.png" alt="">
            </div>
            <div class="status">
                <p>
                    Aktif
                </p>
            </div>
        </div>
        <div class="baris2">
            <div class="input">
                <p>Nama Menu</p>
                <input type="text" value="Ayam Bakar Saus Asam Manis" readonly>
            </div>
            <div class="input">
                <p>Kategori</p>
                <input type="text" value="Makanan" readonly>
            </div>
            <div class="input">
                <p>Harga Jual</p>
                <input type="text" value="20.000" readonly>
            </div>
            <div class="input">
                <p>Tanggal Berlaku</p>
                <input type="text" value="04 Feb 2022" readonly>
            </div>
            <div class="input">
                <p>SKU</p>
                <input type="text" value="-" readonly>
            </div>
        </div>
        <div class="baris3">
            <div class="judul">
                <h1>Data History</h1>
            </div>
            <div class="baris3-content">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">Tanggal Berlaku</th>
                        <th scope="col">Harga</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>24 Feb 2022</td>
                        <td>23 Feb 2022</td>
                      </tr>
                      <tr>
                        <td>Rp 20.000,00</td>
                        <td>Rp 22.500,00</td>
                      </tr>
                    </tbody>
                  </table>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
        
    
<script>
  $(document).ready(function(){
    $('.menu').click(function(){

        $('.menu-content').toggleClass("menu-menu-hide");
        $('.input-content').toggleClass("input-content-show");
        $('.wrap-sorting').toggleClass("wrap-sorting-hide");
        $('.filter').toggleClass("filter-hide");
            
            
    });
  
    $('.change').click(function(){

        $('.img-sorting').toggleClass("img-sorting-hide");
        $('.img-table').toggleClass("img-table-hide");
        $('.menu-content').toggleClass("menu-menu-hide");
        $('.menu-table').toggleClass("menu-table-show");
        
            
    });
});
</script>