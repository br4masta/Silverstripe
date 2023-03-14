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
            <select name="test">
                <option value="1">10</option>
                <option value="2">50</option>
                <option value="3">100</option>
            </select>
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
        .menu-table-hide{
            display: none!important;
        }
        </style>
    <% include Slicing/daftar_menu/menu/include/view %>


    
</div>

<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
        
    
<script>
    /*
    *ketika user menekan tombol view di tampilan menu list
    */
    function view(){
        $('.menu-content').toggleClass("menu-menu-hide");
        $('.input-content').toggleClass("input-content-show");
        $('.wrap-sorting').toggleClass("wrap-sorting-hide");
        $('.filter').toggleClass("filter-hide");
    }

    
    /*
    *ketika user menekan tombol view di tampilan table
    */
    function viewtable(){

        $('.menu-table-show').toggleClass("menu-table-hide");
        $('.input-content').toggleClass("input-content-show");
        $('.wrap-sorting').toggleClass("wrap-sorting-hide");
        $('.filter').toggleClass("filter-hide");
    }

    
</script>

<script type="text/javascript">
    $(document).ready(function() {
    $('.table').DataTable( {
      "processing": true,
      "serverSide": true,
      "ajax": "http://localhost/Silverstripe-2/slicing/getMakanan",
      "columns": [
      { "data": "" },
      { "data": "action" },
      { "data": "id" },
      { "data": "Nama" },
      { "data": "Kategori" },
      { "data": "Harga" },
      { "data": "Status" },
      ]
    } );
    } );

  </script>


<script>
  

  $(document).ready(function(){
    /*
    *ketika user menekan tombol change tampilan
    */
    $('.change').click(function(){

        $('.img-sorting').toggleClass("img-sorting-hide");
        $('.img-table').toggleClass("img-table-hide");
        $('.menu-content').toggleClass("menu-menu-hide");
        $('.menu-table').toggleClass("menu-table-show");
        
            
    });
});
</script>