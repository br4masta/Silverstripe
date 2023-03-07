
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

// untuk slider sidebar

        $(document).ready(function(){
            $('.tombol').click(function(){
                // $('#kiri').toggleClass("slide-menu-tampil");
                // $('#main-content').toggleClass("slide-main-tampil");
                $('.menu2 .dropdown button').toggleClass("menu2-dropdown-button");
                $('.menu2 .dropdown p').toggleClass("menu2-dropdown-p");
                $('.img-menu').toggleClass("menu2-dropdown-img");
                $('#kiri header .wrap a').toggleClass("kiri-header-wrap-a");
                $('#kiri').toggleClass("kiri-width");
                $('.menu2').toggleClass("menu2-toogle");
                $('.sidebar').toggleClass("sidebar-menu");
                $('.menu1').toggleClass("menu1-menu");
                $('.menu1 button').toggleClass("menu1-menu-button");
                $('.menu1 button p').toggleClass("menu1-menu-p");
                $('#kiri .sidebar .profil').toggleClass("profil-menu");
                $('#kiri .sidebar .wrap').toggleClass("wrap-profil-menu");
                $('#kiri .sidebar .menu1 button img').toggleClass("kiri-sidebar-menu1-button-img");
                $('#kiri .menu2 .dropdown button img').toggleClass("kiri-menu2-dropdown-button-img");
                $('.menu3').toggleClass("menu3-menu");
                $('.menu3 button').toggleClass("menu3-button-menu");
                $('.menu3 p').toggleClass("menu3-p-menu");     
            });
        });