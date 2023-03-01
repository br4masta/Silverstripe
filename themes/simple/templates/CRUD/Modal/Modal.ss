
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="exampleModalLabel">Input Buku Baru</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <form method="post" action="simpan/?action=simpan" >
                <!-- <h1>$BookControllerLink/update/?action=update&amp;id=$Book.ID</h1> -->
              <div class="mb-3">
                <label for="Title" class="form-label">Title</label>
                <input type="text" class="form-control" id="Title" name="Title" value="$Book.Title" required>
              </div>
              <div class="mb-3">
                <label for="Author" class="form-label">Author</label>
                <input type="text" class="form-control" id="Author" name="Author" value="$Book.Author" required>
              </div>
              <div class="mb-3">
                <label for="Publisher" class="form-label">Publisher</label>
                <input type="text" class="form-control" id="Publisher" name="Publisher" value="$Book.Publisher" required>
              </div>
              <div class="mb-3">
                <label for="PublishedDate" class="form-label">Published Date</label>
                <input type="date" class="form-control" id="PublishedDate" name="PublishedDate" value="$Book.PublishedDate" required>
              </div>
            
            
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save changes</button>
        </div>
      </form>
      </div>
    </div>
  </div>