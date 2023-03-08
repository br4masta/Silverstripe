<% require themedCSS('kategori') %>

<style>
    .example-parent {
    border: 2px solid #DFA612;
    color: black;
    display: flex;
    font-family: sans-serif;
    font-weight: bold;
  }
  
  .example-origin {
    flex-basis: 100%;
    flex-grow: 1;
    padding: 10px;
  }
  
  .example-draggable {
    background-color: #4AAE9B;
    font-weight: normal;
    margin-bottom: 10px;
    margin-top: 10px;
    padding: 10px;
  }
  
  .example-dropzone {
    background-color: #6DB65B;
    flex-basis: 100%;
    flex-grow: 1;
    padding: 10px;
  }
</style>


<div class="content-kategori">
    <div class="header-kategori">
        <h1>List Kategori</h1>
        <button class="ubah">
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
                 <input type="checkbox">
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
                 <input type="checkbox">
                <span class="slider round"></span>
            </label>
          
        </div>

        <div class="wrap3" id="draggable-3">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Asian Food</p>
            </div>
        <label class="switch">
            <input type="checkbox">
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
                <input type="checkbox">
                <span class="slider round"></span>
            </label>
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