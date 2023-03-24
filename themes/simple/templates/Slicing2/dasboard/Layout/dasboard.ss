
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.11.3/b-2.0.1/b-html5-2.0.1/datatables.min.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.11.3/b-2.0.1/b-html5-2.0.1/datatables.min.js"></script>
<% require themedCSS('menu') %>


<style>
    .hide{
        display: none!important;
    }
    
</style>


<div class="Menu-content">
  <div class="menu-table" style="display: block;">
          <table class="table">
              <thead>
                <tr>
                  <th scope="col"></th>
                  <th scope="col">Aksi</th>
                  <th scope="col">Nama</th>
                  <th scope="col">Kategori</th>
                  <th scope="col">Harga Jual/Tgl Berlaku</th>
                  <th scope="col">Status</th>
                  <!-- <th scope="col">Status</th> -->
                </tr>
              </thead>
              <tbody>
                <!-- datatable here -->
              </tbody>
            </table>
      </div>
</div>


<script type="text/javascript">
  $(document).ready(function() {
  $('.table').DataTable( {
    "processing": true,
    "serverSide": true,
    "searching": false,
    "ajax": "http://localhost/Silverstripe-2/slicing2/getMakanan",
    "columns": [
    { "data": "checkbox" },
    { "data": "aksi" },
    { "data": "Nama" },
    { "data": "Kategori" },
    { "data": "Hargatanggal" },
    { "data": "statusaktif" },
    ]
  } );
  } );
</script>

<!-- script menambah kelas pada element td -->

<script>
  // code disini
</script>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
