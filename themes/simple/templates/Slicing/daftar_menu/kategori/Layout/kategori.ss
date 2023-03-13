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
          <button class="tambah-input" onclick="tambah()">
            <img src="$ThemeDir/images/img/Kategori/plus-circle.svg" alt="">
          </button>
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

<!-- menambahkan element baru -->
<script>
  // Memanggil fungsi tambahElemen setiap kali tombol dengan kelas tambah-input diklik 
var tambah = function tambahElement() {
    const elementBaru = document.createElement('div');

// Memberi isi kontent
elementBaru.innerHTML = `<input type="text" placeholder="Masukan Kategori">
          <button class="tambah-input" onclick="tambah()">
            <img src="$ThemeDir/images/img/Kategori/plus-circle.svg" alt="">
          </button>
          <button onclick="hapus()" class="hapus-input">
            <img src="$ThemeDir/images/img/Kategori/minus-circle.svg" alt="">
          </button>`;

// Memberi Nama Class
elementBaru.className = "input-form";

// Menampilan Element HTML ke Browser
var content = document.querySelector('.modal-form-body-kategori');
content.appendChild(elementBaru);
console.log("tambah sukses")

}

// Memanggil fungsi hapusElemen setiap kali tombol dengan kelas hapus-input diklik

var test = document.getElementsByClassName('input-form');
var hapusbutton = document.getElementsByClassName('hapus-input');
var hapus = function hapusElement(){
  // console.log(test);
  for (let i = 0; i < hapusbutton.length; i++) {
    var toogle = hapusbutton[i];
    // document.querySelector('.modal-form-body-kategori').removeChild(toogle);
    console.log(i);
  console.log("data di hapus")}
}

document.querySelector('#hapus-input').addEventListener('click', function() {
hapus();
});


//tambah element baru
// Mendapatkan elemen input, elemen daftar, dan elemen item
var input = document.getElementById("userInput");
var ul = document.querySelector("modal-form-body-kategori");
var item = document.getElementsByTagName("li");

// Fungsi untuk mendapatkan panjang input dan item
function inputLength() {
    return input.value.length;
}

function listLength() {
    return item.length;
}

// Fungsi untuk membuat elemen daftar baru
function createListElement() {
    var li = document.createElement("div");
    li.className = "input-form";
    // li.appendChild(document.createTextNode(input.value));
    ul.appendChild(li);
    input.value = "";

    // Menambahkan tombol hapus pada item
    var dBtn = document.createElement("button");
    dBtn.className = "hapus-input";
    dBtn.appendChild(document.createTextNode("X"));
    li.appendChild(dBtn);

    // Menghapus item yang diklik
    function deleteListItem(li) {
        li.classList.add("delete");
    }

    dBtn.addEventListener("click", function() {
        // console.log(li);
        deleteListItem(li);
    });
} 


</script>

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
