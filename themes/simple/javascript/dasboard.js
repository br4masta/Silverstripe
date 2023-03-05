
/* Ulangi semua tombol dropdown untuk beralih antara menyembunyikan dan menampilkan konten dropdown - Ini memungkinkan pengguna untuk memiliki beberapa dropdown tanpa konflik*/
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
dropdown[i].addEventListener("click", function() {
this.classList.toggle("active");
var dropdownContent = this.nextElementSibling;
if (dropdownContent.style.display === "flex") {
dropdownContent.style.display = "none";
} else {
dropdownContent.style.display = "flex";
}
});
}

