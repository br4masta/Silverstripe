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
                <th scope="col"></th>
                <th scope="col">Aksi</th>
				<th scope="col">ID</th>
				<th scope="col">Nama</th>
				<th scope="col">Kategori</th>
				<th scope="col">Harga</th>
				<th scope="col">Status</th>
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