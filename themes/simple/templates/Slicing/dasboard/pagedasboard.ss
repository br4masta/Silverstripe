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
    <link rel="stylesheet" href="dasboard.css">
    <% require themedCSS('dasboard') %>
</head>
<body>

    <div class="containerr text-center" id="container" style="margin: auto;">
        <div class="row" >
            <!-- sidebar -->
           
            <% include Slicing/sidebar %>
        
          <!-- main content -->
          <div id="main-content"  class="col" >

            <% include Slicing/header %>

        <div class="content"  >

            $Layout


            
            </div>
          </div>
        </div>
      </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
   
    <% require themedJavascript('dasboard') %>

    <script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
        
    

        


<style>
    @media (max-width: 575px) {
.content{
    /* background-color: yellow; */
    }

}
#container {
        
        width: auto;
    }
@media (min-width: 576px) {
    .content{
        /* background-color: blue; */
        }
}
@media (min-width: 992px) {
    .content{
        /* background-color: salmon; */
        }


}

@media (min-width: 1200px) {
    .content{
    /* background-color: #CB3A31; */
    }
    #container {
        
        width: auto;
    }
    #kiri{
        width: 20%;
        
    }
    #kiri header .wrap{
        /* margin-left: 25%; */
    }

    #main-content .content .content1{
        width: 90%;
    
    }
    #main-content .content .content2{
        width: 90%;
    }
    .content2 .title{
        width: auto;
    }

}
</style>

</body>
</html>