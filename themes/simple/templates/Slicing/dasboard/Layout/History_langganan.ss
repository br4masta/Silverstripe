<link rel="stylesheet" href="//cdn.datatables.net/1.13.3/css/jquery.dataTables.min.css">
<script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.js"></script>

<div class="content-history">
    <button class="back">
        <img src="$ThemeDir/images/img/login/arrow-left.svg" alt="">
        <p>kembali</p>
    </button>
    <table class="table" id="mytable">
        <thead>
          <tr>
            <th scope="col">Aksi</th>
            <th scope="col">Tanggal Transaksi</th>
            <th scope="col">Nama Paket</th>
            <th scope="col">Status</th>
            <th scope="col">Expired Pembayaran</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row"><button><p>detail</p></button></th>
            <td>14 Jun 2022</td>
            <td>Paket B4B / 1 Bulan</td>
            <td>Menunggu Pembayaran</td>
            <td>14 Jun 2022</td>
          </tr>
          
          <tr>
            <th scope="row"><button><p>detail</p></button></th>
            <td>14 Jun 2022</td>
            <td>Paket B4B / 1 Bulan</td>
            <td>Menunggu Pembayaran</td>
            <td>14 Jun 2022</td>
          </tr>
          
          <tr>
            <th scope="row"><button><p>detail</p></button></th>
            <td>14 Jun 2022</td>
            <td>Paket B4B / 1 Bulan</td>
            <td>Menunggu Pembayaran</td>
            <td>14 Jun 2022</td>
          </tr>
          
          <script>
            $(document).ready( function () {
            $('#myTable').DataTable();
            } );
          </script>
        </tbody>
      </table>
</div>