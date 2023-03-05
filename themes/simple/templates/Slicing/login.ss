<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;700&display=swap" rel="stylesheet"> 
    <% require themedCSS('login') %>
</head>
<body>
    
    <style>
    .input-kolom2:hover {
    border-color: gray;
    }


   
    .input-kolom2 input:focus{
        border: 3px solid #2ECC71; border-radius: 6px;
    }
    .input-kolom3 input:focus{
        border: 3px solid #2ECC71; border-radius: 6px;
    }

    
        </style>

    <div class="container text-center" id="container">
        <div class="row" style="height: 790px;">
            <!-- gambar -->
          <div id="background" class="col-8" style="background-image: url('$ThemeDir/images/img/background.png.png'); ">
          </div>

          <!-- login -->
          <div class="col-4" id="login-container">
            <div class="container">
                <div class="logo">
                    <img src="$ThemeDir/images/img/logo.png.png" alt="">
                </div>
                <div class="login" id="login-wrap">

                    <div class="kolom1">
                        <h1>Selamat Datang Kembali </h1>
                        <p>Shilakan masukkan email atau nomor WA Anda</p>
                    </div>
                    <div class="kolom2" >
                        <h2>Email/Nomor WA</h2>
                            <div class="input-kolom2">
                                <input type="text" style="">
                                <img src="$ThemeDir/images/img/user-circle.svg" alt="">
                            </div>
                        <p>Masukkan email atau nomer WA Anda</p>
                    </div>
                    <div class="kolom3">
                    <h2>Password</h2>
                        <div class="input-kolom3">
                            <input type="text">
                            <img src="$ThemeDir/images/img/eye-off.svg" alt="">
                        </div>
                   

                    </div>
                    <div class="kolom4">
                        <button type="button" class="btn btn-success" onclick="location.href='index';">Login</button>

                        <button type="button" class="btn btn-light" id="button-login"><img src="$ThemeDir/images/img/flat-color-icons_google.png" alt=""> Login with google</button>
                    </div>

                    <div class="kolom5">
                        <div class="p1">
                            <p>Belum Terdaftar ? </p>
                            <a href="#">Daftar</a>
                        </div>
                        <a href="#">Forgot Password</a>
                    </div>

                </div>
            </div>
          </div>
        </div>
      </div>


      <style>
       
        @media (min-width: 50px) {
            #login-container {
                width: 100%;
            }
        
            #background {
                display: none;
            }
        }

        @media (min-width: 769px) {
            #login-container {
                width: 20%;
            }
        
            #background {
                display: block;
                width: 40%;
            }
        }

        @media (min-width: 1199px) {
            #login-container {
                width: 10%;
            }
        
            #background {
                width: 60%;
            }
        }
        
        @media (min-width: 1200px) {
            #login-container {
                width: 20%;
            }
        
            #background {
                width: 65%;  
            }
        }
    
        @media (min-width: 1400px) {
            #login-container {
                width: 30%;
            }
        
            #background {
                width: 834px;  
            }
        }
    
    </style>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
</body>
</html>