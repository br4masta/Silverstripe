<!DOCTYPE html>
<html>
<head>
	<title>DataTable with SilverStripe-2 Database</title>
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.11.3/b-2.0.1/b-html5-2.0.1/datatables.min.css"/>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.11.3/b-2.0.1/b-html5-2.0.1/datatables.min.js"></script>
  
	
</head>
<body>
    <% include Header %>
    <!-- pesan Jika Berhasil-->
    <% if successMessage %>
    <div class="alert alert-success" role="alert">
        $successMessage
    </div>
<% end_if %>

<% if pesanHapus %>
    <div class="alert alert-danger" role="alert">
        $pesanHapus
    </div>
<% end_if %>

$Layout

    <script type="text/javascript">
		$(document).ready(function() {
		$('.table').DataTable( {
			"processing": true,
			"serverSide": true,
			"ajax": "http://localhost/Silverstripe-2/slicing/getMakanan",
			"columns": [
      { "data": "checkbox" },
      { "data": "aksi" },
			{ "data": "id" },
			{ "data": "Nama" },
			{ "data": "Kategori" },
			{ "data": "Harga" },
			{ "data": "Status" },
			]
		} );
		} );
	</script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
   

</body>
</html>
