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

<div class="container mt-5 mb-5">
    <div class="row">
      <div class="col-12">
        <h1>Data Buku</h1>
      </div>  
    </div>
    <hr>
    <button type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
        Add Book
    </button>
      <hr>
    <div class="row">
      <div class="col-12">
        <div class="table-responsive">
          <table class="table table-striped table-sm">
            <thead>
              <tr>
				<th scope="col">Class Name</th>
				<th scope="col">ID</th>
				<th scope="col">Last Edited</th>
				<th scope="col">Created</th>
				<th scope="col">Title</th>
				<th scope="col">Author</th>
				<th scope="col">Published Date</th>
				<th scope="col">Publisher</th>
				<th scope="col">Actions</th>
              </tr>
            </thead>
            <tbody>
              <!-- List Data Menggunakan DataTable -->              
            </tbody>
          </table>
        </div>
      </div>
    </div>
    <hr>
    <% include CRUD/Modal/Modal %>
  </div>

    <script type="text/javascript">
		$(document).ready(function() {
		$('.table').DataTable( {
			"processing": true,
			"serverSide": true,
			"ajax": "http://localhost/Silverstripe-2/book_crud/getBooks",
			"columns": [
			{ "data": "ClassName" },
			{ "data": "ID" },
			{ "data": "LastEdited" },
			{ "data": "Created" },
			{ "data": "Title" },
			{ "data": "Author" },
			{ "data": "PublishedDate" },
			{ "data": "Publisher" },
			{ "data": "Actions" },
			]
		} );
		} );

	</script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
   

</body>
</html>
