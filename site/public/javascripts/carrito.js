//Variables
let carrito = document.getElementById('carrito')
let productos = document.getElementById('productos');


//Eventos
leerEventos();

function leerEventos(){
 productos.addEventListener('click', agregarCarro);
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
         id: producto.id,
     };
    agregarAlCarrito(infoProducto);    
};
//Muestra los cursos
function agregarAlCarrito(producto) {
 console.log(producto);
}