//Variables
let carrito = document.getElementById('carrito')
let productos = document.getElementById('productos');
let botonComprar = document.querySelector("#comprar");

//Eventos
leerEventos();

function leerEventos(){
 productos.addEventListener('click', agregarCarro);
 botonComprar.addEventListener('click', comprar)
}

function comprar(){
    location.href = "/productos/buy"
}



function agregarCarro(e){
  e.preventDefault();
  //Delegation para agregar carrito
  if(e.target.classList.contains('agregar-carrito')){
      const producto = e.target.parentElement.parentElement.parentElement;
      //Mandamos el producto
      leerDatosProductos(producto);
  }
};
//Lee los datos del producto
function leerDatosProductos(producto){
     const infoProducto = {
         img: producto.querySelector('.imagen').src,
         titulo: producto.querySelector('#title-product'),
         precio: producto.querySelector('#precio'),
         id: producto.querySelector('#agregar-carrito').getAttribute('data-id')
     };
    agregarAlCarrito(infoProducto);    
};
//Muestra los cursos
function agregarAlCarrito(producto) {
 console.log(producto);
}