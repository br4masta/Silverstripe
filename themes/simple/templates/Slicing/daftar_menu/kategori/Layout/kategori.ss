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
                 <input type="checkbox" id="myCheck" class="tes-checkbox" >
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
                 <input type="checkbox" class="tes-checkbox" >
                <span class="slider round"></span>
            </label>
          
        </div>

        <div class="wrap3" id="draggable-3">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Asian Food</p>
            </div>
        <label class="switch">
            <input type="checkbox" class="tes-checkbox" >
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
                <input type="checkbox" class="tes-checkbox" >
                <span class="slider round"></span>
            </label>
        </div>
    </div>
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






<!-- script ini digunakan untuk membuat sorlist yang bisa di drag and drop -->
<!-- kita menggunakan library rubaxa -->
<!-- kita import terlebih dahulu Sortable.min.js nya -->
<% require themedJavascript('Sortable.min') %>

<script type="text/javascript">
    var container = document.getElementById('items');
    var sort = Sortable.create(container, {
      onUpdate: function(evt){
        console.log(evt.oldIndex + '-' + evt.newIndex);
      }
    });
    
</script>

<!-- script ini digunakan untuk menampilkan validasi terhadap tombol switch -->
<!-- validasi berupa modal bawaan dari bootsrap -->
<script>
  var checkboxes = document.getElementsByClassName("tes-checkbox");

  for (let i = 0; i < checkboxes.length; i++) {
  const toggle = checkboxes[i];

  toggle.onclick = function(){
    if (toggle.checked) {
      // tampilkan modal konfirmasi
      $('#modal-aktif-kategori').modal('show');
      toggle.checked = false;
      console.log("menyala")
      console.log("ini adalah baris" + i)
  
      // kirim nilai i ke function confirmSwitch(i)
      // .off() digunakan supaya nilai yang dikirim hanya sekali
      $('#modal-aktif-kategori #ya').off().on('click', function() {
      confirmSwitch(i);
});
    } 
    else {
      // jika user tidak menyetujui, reset toggle
      $('#modal-nonaktif-kategori').modal('show');
      toggle.checked = true;
      console.log("mati")
      // kirim nilai i ke function confirmSwitch(i) 
      // .off() digunakan supaya nilai yang dikirim hanya sekali
      $('#modal-nonaktif-kategori #ya').off().on('click', function() {
      confirmSwitch(i);
  });
    }
  }
}

function confirmSwitch(i) {
  // jika pengguna menekan tombol 'Ya' pada modal konfirmasi, lakukan tindakan yang diinginkan
  console.log(i);
  if(checkboxes[i].checked == true){
    checkboxes[i].checked = false;
  }else{
    checkboxes[i].checked = true;
  }
  // console.log("Toggle switch on");
  // sembunyikan modal konfirmasi
  $('#modal-aktif-kategori').modal('hide');
  $('#modal-nonaktif-kategori').modal('hide');
}
</script>
