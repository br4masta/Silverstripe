
<style>
    .judul-content{
        display: flex 
        
        
    }
    
    .judul-content h1{
        color: #307CFE; 
        margin-left: 15.5px;
    }

    .fa-sharp {
        font-size: 30px;
        color: #307CFE;
        
    }

.search{
    display: flex;
    flex-direction: row;
    
}

.search-id {
    background-color: #fff;
    border: 1px solid #000000;
    border-radius: 10px;
    width: 336px;
    height: 55px;
margin-left: auto;
}

.search-id input{
    border: none;
}

.search-id button{
    border: none;
}
.search-id button i{
    color: black;
   font-size: 24px;
}

.filter{
    background-color: #fff;
    border: 1px solid #000000;
    border-radius: 10px;
    margin-top: 0px;
    margin-left: 11px;
    width: 139px;
    height: 55px;
    color: #000000;
    display: flex;
}

.filter p{
    font-family: 'Roboto';
    font-style: normal;
    font-weight: 400;
    font-size: 18px;
    /* background-color: #307CFE; */
    margin: auto;
    
}

.container .row button {
    background-color: #307CFE;
    margin-left: 20%;
    margin-top: 29px;
    margin-bottom: 16px;
}

.wraper{
    display: flex;
    flex-direction: row;
}

.dropdown {
    margin-left: 5px;
}

.wraper p{
    margin: auto;
    font-size: 20px;
}
</style>

<!-- judul -->
<div class="judul-content" >
    <i class="fa-sharp fa-solid fa-arrow-left" ></i>
    <h1>Master Produk</h1>
</div>

<!-- filter, search -->
<div class="search">
    <form class="search-id d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit"><i class="fa-sharp fa-solid fa-magnifying-glass"></i></button>
    </form>
    <button class="filter"><p>filter</p><i class="fa-sharp fa-solid fa-filter"></i></button>
</div>

<!-- Tambah -->
<div class="container">
    <div class="row">
        <button>Tambah</button>
    </div>
</div>

<!-- pagination -->
<div class="container">
    <div class="wraper">
        <p>tampilakan </p>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
              10
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </div>
        <p>data per halaman</p>
        
    </div>
</div>

<% if List.TotalItems %>
    <table class="table-light" style="margin: auto;" >
        <thead>
            <tr>
                <th>Produk</th>
                <th>Nama</th>
                <th>Harga</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            <!-- pakai server side -->
            <!-- ambil data table -->
            <% loop List %>
                <tr>
                    <td style="text-align: center;">$ID</td>
                    <td><a href="$Link">$Nama</a></td>
                    <td>$Harga</td>
                    <td>
                        <a href="home/produk/sunting/$ID">Sunting</a> |
                        <a href="home/produk/hapus/$ID" class="delete-link">Hapus</a>
                    </td>
                </tr>
            <% end_loop %>
        </tbody>
    </table>
    <div class="pagination">
        <% if List.NotLastPage %>
            <a href="$Link?start=$List.NextStart">Selanjutnya &raquo;</a>
        <% end_if %>
        <% if List.NotFirstPage %>
            <a href="$Link?start=$List.PrevStart">&laquo; Sebelumnya</a>
        <% end_if %>
    </div>
<% else %>
    <p>Belum ada produk yang ditambahkan.</p>
<% end_if %>
