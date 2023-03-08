<% require themedCSS('kategori') %>


<div class="content-kategori">
    <div class="header-kategori">
        <h1>List Kategori</h1>
        <button class="ubah" data-bs-toggle="modal" data-bs-target="#modal-form-kategori">
            <p>ubah</p>
        </button>
    </div>
    <div class="content-content-kategori" id="items">
        
        <div class="wrap1" id="draggable-1">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Indonesian Food</p>
                <div class="status">
                    <p>2</p>
                </div>
            </div>
            <label class="switch">
                 <input type="checkbox" id="myCheck" class="tes-checkbox" onclick="toggleSwitch(this)">
                <span class="slider round"></span>
            </label>
        </div>
        
        <div class="wrap2" id="draggable-2">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Minuman</p>
                <div class="status">
                    <p>10</p>

                </div>
            </div>
            <label class="switch">
                 <input type="checkbox" onclick="toggleSwitch(this)">
                <span class="slider round"></span>
            </label>
          
        </div>

        <div class="wrap3" id="draggable-3">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Asian Food</p>
            </div>
        <label class="switch">
            <input type="checkbox" onclick="toggleSwitch(this)">
            <span class="slider round"></span>
        </label>
        </div>

        <div class="wrap4" id="draggable-4">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Appetizer</p>
                <div class="status">
                    <p>6</p>
                </div>
            </div>
            <label class="switch">
                <input type="checkbox" onclick="toggleSwitch(this)">
                <span class="slider round"></span>
            </label>
        </div>
    </div>
</div>

<!-- Button trigger modal -->
<div class="test" style="display: flex; gap: 50px;">
  <h1>implementasikan kedalam Toogle switch -></h1>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-aktif-kategori">
    aktifkan
  </button>
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#modal-nonaktif-kategori">
    nonaktifkan
  </button>
</div>

<!-- toogle bar modal -->
<div class="modal fade" id="modal-aktif-kategori" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body-kategori">
        <p>
          Apakah Anda yakin mengaktifkan kategori ini ?
        </p> 
      </div>
      <div class="modal-footer-kategori">
        <button id="tidak" type="button" class="btn btn-secondary" data-bs-dismiss="modal" value="false">Tidak</button>
        <button id="ya" class="btn btn-primary" value="true">Ya</button>
      </div>
    </div>
  </div>
</div>
<!-- modal nonaktif -->
<div class="modal fade" id="modal-nonaktif-kategori" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body-kategori">
        <p>
          Apakah Anda yakin menonaktifkan kategori ini ?
        </p> 
      </div>
      <div class="modal-footer-kategori">
        <button id="tidak" type="button" class="btn btn-secondary" data-bs-dismiss="modal" value="false">Tidak</button>
        <button id="ya" class="btn btn-primary" value="true">Ya</button>
      </div>
    </div>
  </div>
</div>
<!-- modal form kategori -->
<div class="modal fade" id="modal-form-kategori" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-form-body-kategori">
        <h1>Form Kategori</h1>
        <div class="input-form">
          <input type="text" placeholder="Masukan Kategori">
          <img src="$ThemeDir/images/img/Kategori/plus-circle.svg" alt="">
        </div>
      </div>
      <div class="modal-footer-kategori">
        <button id="simpan" type="button" class="btn btn-secondary" data-bs-dismiss="modal" >Simpan</button>
      </div>
    </div>
  </div>
</div>



<script src="$ThemeDir/node_modules/sortablejs/Sortable.min.js"> 
</script>

<% require themedJavascript('Sortable.min') %>

<script type="text/javascript">
    var container = document.getElementById('items');
    var sort = Sortable.create(container, {});
</script>

<script>
  // var group = 
  document.getElementById("myCheck").addEventListener('change', function(e) {
if (this.checked) {
  $('#modal-aktif-kategori').modal('show');
  if (!confirm("This will shutdown power! Are you sure?")) {
    this.checked = false;
  }
} else {
  $('#modal-nonaktif-kategori').modal('show');
  if (!confirm("This will shutdown power! Are you sure?")) {
    this.checked = true;
  }
};
});
</script>

s