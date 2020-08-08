// Variables
const imgUser= document.getElementById ("userAvatar")
console.log (imgUser);

//EventListener
EventListener ();

function EventListener() {
    imgUser.addEventListener("click",cerrarSesion)
}

//Function

function cerrarSesion() {
    imgUser.innerHTML= `<div class="btn-group">
    <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        ↓
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Mí cuenta</a>
      <a class="dropdown-item" href="#">Modificar datos</a>
      <a class="dropdown-item" href="#">Mis pedidos</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Cerrar sesión</a>
    </div>
</div>`
}