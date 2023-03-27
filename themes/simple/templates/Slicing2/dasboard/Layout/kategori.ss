<style>
    .body {
  font-family: "Inter", sans-serif;
  background: #a0a0a0;
}

.content-kategori {
  margin-top: 20px;
  width: 1031px;
  height: 368px;
  background: #FFFFFF;
  box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.25);
  border-radius: 10px;
  margin: auto;
  margin-top: 50px;
}
.content-kategori .header-kategori {
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-bottom: 3px solid #25A35A;
}
.content-kategori .header-kategori h1 {
  font-weight: 700;
  font-size: 24px;
  line-height: 32px;
  margin: 30px;
  margin-bottom: 27px;
}
.content-kategori .header-kategori button {
  background: #29B362;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.12);
  border-radius: 6px;
  width: 68px;
  height: 32px;
  border: none;
  margin: 30px;
  margin-bottom: 27px;
}
.content-kategori .content-content-kategori {
  display: flex;
  flex-direction: column;
  gap: 25px;
  margin-left: 60px;
  margin-top: 30px;
}
.content-kategori .content-content-kategori .wrap1 {
  width: 941px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  /* Rounded sliders */
}
.content-kategori .content-content-kategori .wrap1 .wrap-2 {
  display: flex;
  align-items: center;
  gap: 10px;
}
.content-kategori .content-content-kategori .wrap1 .wrap-2 p {
  margin-bottom: 0;
}
.content-kategori .content-content-kategori .wrap1 .wrap-2 .name {
  font-weight: 400;
  font-size: 14px;
  line-height: 22px;
}
.content-kategori .content-content-kategori .wrap1 .wrap-2 .status {
  width: 24px;
  height: 20px;
  background: #F0F3FF;
  border: 1px solid #B1C5F6;
  border-radius: 6px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.content-kategori .content-content-kategori .wrap1 .wrap-2 .status p {
  font-weight: 500;
  font-size: 12px;
  line-height: 16px;
  color: #3267E3;
}
.content-kategori .content-content-kategori .wrap1 .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}
.content-kategori .content-content-kategori .wrap1 .switch input {
  opacity: 0;
  width: 0;
  height: 0;
}
.content-kategori .content-content-kategori .wrap1 .slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap1 .slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap1 input:checked + .slider {
  background-color: #29B362;
}
.content-kategori .content-content-kategori .wrap1 input:focus + .slider {
  box-shadow: 0 0 1px #29B362;
}
.content-kategori .content-content-kategori .wrap1 input:checked + .slider:before {
  transform: translateX(26px);
}
.content-kategori .content-content-kategori .wrap1 .slider.round {
  border-radius: 34px;
}
.content-kategori .content-content-kategori .wrap1 .slider.round:before {
  border-radius: 50%;
}
.content-kategori .content-content-kategori .wrap2 {
  width: 941px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  /* Rounded sliders */
}
.content-kategori .content-content-kategori .wrap2 .wrap-2 {
  display: flex;
  align-items: center;
  gap: 10px;
}
.content-kategori .content-content-kategori .wrap2 .wrap-2 p {
  margin-bottom: 0;
}
.content-kategori .content-content-kategori .wrap2 .wrap-2 .name {
  font-weight: 400;
  font-size: 14px;
  line-height: 22px;
}
.content-kategori .content-content-kategori .wrap2 .wrap-2 .status {
  width: 24px;
  height: 20px;
  background: #F0F3FF;
  border: 1px solid #B1C5F6;
  border-radius: 6px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.content-kategori .content-content-kategori .wrap2 .wrap-2 .status p {
  font-weight: 500;
  font-size: 12px;
  line-height: 16px;
  color: #3267E3;
}
.content-kategori .content-content-kategori .wrap2 .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}
.content-kategori .content-content-kategori .wrap2 .switch input {
  opacity: 0;
  width: 0;
  height: 0;
}
.content-kategori .content-content-kategori .wrap2 .slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap2 .slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap2 input:checked + .slider {
  background-color: #29B362;
}
.content-kategori .content-content-kategori .wrap2 input:focus + .slider {
  box-shadow: 0 0 1px #29B362;
}
.content-kategori .content-content-kategori .wrap2 input:checked + .slider:before {
  transform: translateX(26px);
}
.content-kategori .content-content-kategori .wrap2 .slider.round {
  border-radius: 34px;
}
.content-kategori .content-content-kategori .wrap2 .slider.round:before {
  border-radius: 50%;
}
.content-kategori .content-content-kategori .wrap3 {
  width: 941px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  /* Rounded sliders */
}
.content-kategori .content-content-kategori .wrap3 .wrap-2 {
  display: flex;
  align-items: center;
  gap: 10px;
}
.content-kategori .content-content-kategori .wrap3 .wrap-2 p {
  margin-bottom: 0;
}
.content-kategori .content-content-kategori .wrap3 .wrap-2 .name {
  font-weight: 400;
  font-size: 14px;
  line-height: 22px;
}
.content-kategori .content-content-kategori .wrap3 .wrap-2 .status {
  width: 24px;
  height: 20px;
  background: #F0F3FF;
  border: 1px solid #B1C5F6;
  border-radius: 6px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.content-kategori .content-content-kategori .wrap3 .wrap-2 .status p {
  font-weight: 500;
  font-size: 12px;
  line-height: 16px;
  color: #3267E3;
}
.content-kategori .content-content-kategori .wrap3 .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}
.content-kategori .content-content-kategori .wrap3 .switch input {
  opacity: 0;
  width: 0;
  height: 0;
}
.content-kategori .content-content-kategori .wrap3 .slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap3 .slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap3 input:checked + .slider {
  background-color: #29B362;
}
.content-kategori .content-content-kategori .wrap3 input:focus + .slider {
  box-shadow: 0 0 1px #29B362;
}
.content-kategori .content-content-kategori .wrap3 input:checked + .slider:before {
  transform: translateX(26px);
}
.content-kategori .content-content-kategori .wrap3 .slider.round {
  border-radius: 34px;
}
.content-kategori .content-content-kategori .wrap3 .slider.round:before {
  border-radius: 50%;
}
.content-kategori .content-content-kategori .wrap4 {
  width: 941px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  /* Rounded sliders */
}
.content-kategori .content-content-kategori .wrap4 .wrap-2 {
  display: flex;
  align-items: center;
  gap: 10px;
}
.content-kategori .content-content-kategori .wrap4 .wrap-2 p {
  margin-bottom: 0;
}
.content-kategori .content-content-kategori .wrap4 .wrap-2 .name {
  font-weight: 400;
  font-size: 14px;
  line-height: 22px;
}
.content-kategori .content-content-kategori .wrap4 .wrap-2 .status {
  width: 24px;
  height: 20px;
  background: #F0F3FF;
  border: 1px solid #B1C5F6;
  border-radius: 6px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.content-kategori .content-content-kategori .wrap4 .wrap-2 .status p {
  font-weight: 500;
  font-size: 12px;
  line-height: 16px;
  color: #3267E3;
}
.content-kategori .content-content-kategori .wrap4 .switch {
  position: relative;
  display: inline-block;
  width: 60px;
  height: 34px;
}
.content-kategori .content-content-kategori .wrap4 .switch input {
  opacity: 0;
  width: 0;
  height: 0;
}
.content-kategori .content-content-kategori .wrap4 .slider {
  position: absolute;
  cursor: pointer;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: #ccc;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap4 .slider:before {
  position: absolute;
  content: "";
  height: 26px;
  width: 26px;
  left: 4px;
  bottom: 4px;
  background-color: white;
  transition: 0.4s;
}
.content-kategori .content-content-kategori .wrap4 input:checked + .slider {
  background-color: #29B362;
}
.content-kategori .content-content-kategori .wrap4 input:focus + .slider {
  box-shadow: 0 0 1px #29B362;
}
.content-kategori .content-content-kategori .wrap4 input:checked + .slider:before {
  transform: translateX(26px);
}
.content-kategori .content-content-kategori .wrap4 .slider.round {
  border-radius: 34px;
}
.content-kategori .content-content-kategori .wrap4 .slider.round:before {
  border-radius: 50%;
}

.modal-content {
  width: 456px;
  background-color: #FFFFFF;
  box-shadow: 4px 4px 10px rgba(0, 0, 0, 0.25);
  border-radius: 12px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: 61px;
  margin-top: 235px;
}
.modal-content .modal-body-kategori {
  margin-top: 60px;
}
.modal-content p {
  margin: 0;
}
.modal-content .modal-footer-kategori {
  display: flex;
  gap: 55px;
  margin-bottom: 61px;
}
.modal-content .modal-footer-kategori #tidak {
  background-color: #CB3A31;
  border: none;
  width: 74px;
  height: 40px;
}
.modal-content .modal-footer-kategori #ya {
  background-color: #29B362;
  border: none;
  width: 74px;
  height: 40px;
  color: black;
}
.modal-content .modal-footer-kategori #simpan {
  width: 388px;
  height: 40px;
  background-color: #29B362;
}
.modal-content .modal-form-body-kategori {
  width: 388px;
  margin-top: 30px;
}
.modal-content .modal-form-body-kategori h1 {
  font-weight: 700;
  font-size: 24px;
  line-height: 32px;
  text-align: left;
  margin: 0;
}
.modal-content .modal-form-body-kategori .input-form {
  margin-top: 15px;
  display: flex;
  align-items: center;
  gap: 15px;
}
.modal-content .modal-form-body-kategori .input-form input {
  width: 255px;
  height: 42px;
  border: 1px solid #B0B0B0;
  box-shadow: 1px 2px 2px rgba(0, 0, 0, 0.08);
  border-radius: 6px;
  background-color: #FFFFFF;
}
.modal-content .modal-form-body-kategori .input-form input:focus {
  outline: 0;
  border: 3px solid #2ECC71;
  border-radius: 6px;
}
.modal-content .modal-form-body-kategori .input-form button {
  width: -moz-fit-content;
  width: fit-content;
  height: -moz-fit-content;
  height: fit-content;
  padding: 0;
  margin: 0;
  display: flex;
  background-color: transparent;
  border: none;
}/*# sourceMappingURL=style.css.map */
</style>

<div class="content-kategori">
    <div class="header-kategori">
        <h1>List Kategori</h1>
        <button class="ubah" data-bs-toggle="modal" data-bs-target="#modal-form-kategori">
            <p>ubah</p>
        </button>
    </div>
    <div class="content-content-kategori" id="items">

    </div>

</div>


<div class="kategori">

</div>

<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
<% require themedJavascript('Sortable.min.js') %>

<script>
    var container = document.getElementById('items');
        var sort = Sortable.create(container, {
        onUpdate: function(evt){
            console.log(evt.oldIndex + '-' + evt.newIndex);
            sorting=1;
            console.log(evt);
            testing = evt;
        }
        });
    

    $.ajax({
        url     : '$urlslicing',
        method  : "POST",
        data    : {nama : "hilman"},
        success: function(data){
            
            $('.content-content-kategori').append(data)
            // console.log(data)
        }
        
    });


    $(document).on('click','.tes-checkbox', function(){
    if(this.checked){ var slider ="aktif"}else{ var slider ="nonaktif"};
        // console.log(slider);
        var id = this.id
        // console.log(id);
        $.ajax({
                url     : '$updateurl',
                method  : "POST",
                data    : {slider : slider, id : id,},
            success: function(data){
                console.log(data)
            }

            });

    });

    
    
        
</script>