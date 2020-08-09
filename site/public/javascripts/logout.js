// Variables
const logOut= document.getElementById ("cerrar-sesion")


//EventListener
EventListener ();

function EventListener() {
    logOut.addEventListener("click", cerrarSesion)
}

//Function

function cerrarSesion() {
    const row =document.createElement('div');
    row.innerHTML= `
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Mí cuenta</a>
      <a class="dropdown-item" href="#">Modificar datos</a>
      <a class="dropdown-item" href="#">Mis pedidos</a>
      <div class="dropdown-divider"></div>
      <a class="dropdown-item" href="#">Cerrar sesión</a>
    </div>
</div>`
           logOut.appendChild(row);
}