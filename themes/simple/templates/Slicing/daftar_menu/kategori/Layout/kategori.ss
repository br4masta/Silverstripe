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
    <div class="content-content-kategori"
    ondragover="onDragOver(event);"
    ondrop="onDrop(event);" style="height: 300px;">
        
        <div class="wrap1" id="draggable-1"
        draggable="true"
        ondragstart="onDragStart(event);">
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
        
        <div class="wrap2" id="draggable-2"
        draggable="true"
        ondragstart="onDragStart(event);">
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

        <div class="wrap3" id="draggable-3"
        draggable="true"
        ondragstart="onDragStart(event);">
            <div class="wrap-2">
                <img src="$ThemeDir/images/img/Kategori/bx_move-vertical.svg" alt="">
                <p class="name">Asian Food</p>
            </div>
        <label class="switch">
            <input type="checkbox">
            <span class="slider round"></span>
        </label>
        </div>

        <div class="wrap4" id="draggable-4"
        draggable="true"
        ondragstart="onDragStart(event);">
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

<script>
    function onDragStart(event) {
    event
      .dataTransfer
      .setData('text/plain', event.target.id);
  
    event
      .currentTarget
      .style
    //   .backgroundColor = '';
  }

  function onDragOver(event) {
    event.preventDefault();
  }

  function onDrop(event) {
    const id = event
      .dataTransfer
      .getData('text');

      const draggableElement = document.getElementById(id);
      const dropzone = event.target;
      dropzone.appendChild(draggableElement);
      event
    .dataTransfer
    .clearData();
  }
</script>