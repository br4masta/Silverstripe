<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <% include Slicing/includes/linkhead %>
    <% require themedCSS('daftar') %>
    
</head>
<div class="containerr">
    <aside>
        <h1>MGRESTO</h1>
    </aside>
   <div class="kanan">
        <header>
            <h1>Daftar</h1>
        </header>
        <main>
            <button class="back">
                <img src="$ThemeDir/images/img/login/arrow-left.svg" alt="">
                <p>kembali</p>
            </button>
            <form class="row g-3 needs-validation" novalidate>
                <div class="form">
                    <div class="baris1">
                        <p>Nama*</p>
                        <div class="input">
                            <input placeholder="Masukkan Nama" type="text" class="form-control" id="validationCustom01" required>  
                            <div class="invalid-feedback">
                                Please choose a username.
                              </div>
                        </div>
                    </div>
                    <div class="baris2">
                        <p>Alamat Email*</p>
                        <div class="input">
                            <input placeholder="Masukkan Alamat Email" type="text" class="form-control" id="validationCustom01" required>  
                            <div class="invalid-feedback">
                                Ups, Emailnya belum diisi.
                              </div>
                        </div>
                    </div>
                    <div class="baris3">
                        <p>Nomor HP/WA*</p>
                        <div class="input">
                            <input placeholder="Masukkan Nomor HP/WA" type="text" class="form-control" id="validationCustom01" required>  
                            <div class="invalid-feedback">
                                Ups, Nomor HP/WAnya belum diisi.
                              </div>
                        </div>
                    </div>
                    <div class="baris4">
                        <p>Password*</p>
                        <div class="input">
                            <input placeholder="Masukkan Password" type="text" class="form-control" id="validationCustom01" required>  
                            <div class="invalid-feedback">
                                Ups, Passwordnya belum diisi, Buat minimal 8 karakter, kombinasi huruf dan angka  
                              </div>
                        </div>
                    </div>
                    <div class="baris5">
                        <p>Masukkan Ulang Password*</p>
                        <div class="input">
                            <input placeholder="Masukkan Ulang Password" type="text" class="form-control" id="validationCustom01" required>  
                        </div>
                    </div>
                    <div class="baris6">
                        <p class="otp">OTP</p>
                        <p class="remind">(Kode OTP akan dikirimkan melalui Email)</p>
                    </div>
                    <button class="lanjutkan" type="submit">
                        <img src="$ThemeDir/images/img/login/arrow-right.svg" alt="">
                        <p>Lanjutkan</p>
                    </button>
                </div>
            </form>
        </main>
   </div>
</div>
 <!-- $Layout -->

    <% include Slicing/includes/linkfoot %>

    <script>// Example starter JavaScript for disabling form submissions if there are invalid fields
        (() => {
          'use strict'
        
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          const forms = document.querySelectorAll('.needs-validation')
        
          // Loop over them and prevent submission
          Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
              if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
              }
        
              form.classList.add('was-validated')
            }, false)
          })
        })()</script>
</body>
</html>