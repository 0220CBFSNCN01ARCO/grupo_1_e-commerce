//Variables
let carrito = document.getElementById('carrito')
let productos = document.getElementById('productos');
let botonComprar = document.querySelector("#comprar");
let btnVaciar = document.getElementById('vaciar-carrito')
let listaCarrito = document.querySelector('#lista-carrito tbody');

//Eventos
leerEventos();

function leerEventos(){
 productos.addEventListener('click', agregarCarro);
 botonComprar.addEventListener('click', comprar);
 carrito.addEventListener('click', eliminarCurso);
 btnVaciar.addEventListener('click', vaciarCarrito);
 //Muestra los cursos que esten en el local storage
 document.addEventListener('DOMContentLoaded', mostrarProducto);
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
         titulo: producto.querySelector('#title-product').textContent,
         precio: producto.querySelector('#precio').textContent,
         id: producto.querySelector('#agregar-carrito').getAttribute('data-id')
     };
    agregarAlCarrito(infoProducto);    
};
//Muestra los cursos en el carrito
function agregarAlCarrito(producto) {
       const row =document.createElement('tr');
       row.innerHTML = `
       <td>
           <img src="${producto.img}" width=100px>
       </td>
       <td>
       ${producto.titulo}
       </td>
       <td>
       ${producto.precio}
       </td>
       <td>
       <a href="#" data-id="${producto.id}"><i class="fas fa-trash-alt eliminar-producto"></i></a>
       </td>
       `;
       listaCarrito.appendChild(row);
       guardarLocalStorage(producto);
};
//Elimina el curso en el dom
function eliminarCurso(e){
    e.preventDefault();
    let producto;
    let productosID;
    if(e.target.classList.contains("eliminar-producto")){
        e.target.parentElement.parentElement.parentElement.remove();
        producto = e.target.parentElement.parentElement.parentElement;
        productosID = producto.querySelector('a').getAttribute('data-id');
    };

    eliminarProductoLS(productosID);
};
//Vacia el carrito 
function vaciarCarrito(){
    while(listaCarrito.firstChild){
        listaCarrito.removeChild(listaCarrito.firstChild);
    };
    vaciarLocalStorage();
};

//Guardar producto en el local storage
function guardarLocalStorage(producto){
    let productos;

    productos = obtenerProductoLocalStorage();
    productos.push(producto);
    localStorage.setItem('productos', JSON.stringify(productos));
}

function obtenerProductoLocalStorage(){
    let productosLS;
    if(localStorage.getItem("productos") == null){
        productosLS = [];
    }else{
        productosLS = JSON.parse(localStorage.getItem('productos'))
    };
    return productosLS
}

//Muestra los cursos del local storage
function mostrarProducto(){
    let productosLS;
    productosLS = obtenerProductoLocalStorage();
    productosLS.forEach(producto => {
        const row =document.createElement('tr');
       row.innerHTML = `
       <td>
           <img src="${producto.img}" width=100px>
       </td>
       <td>
       ${producto.titulo}
       </td>
       <td>
       ${producto.precio}
       </td>
       <td>
       <a href="#" data-id="${producto.id}"><i class="fas fa-trash-alt eliminar-producto"></i></a>
       </td>
       `;
       listaCarrito.appendChild(row);
        
    });
};

function eliminarProductoLS(producto){
    let productosLS;
    productosLS = obtenerProductoLocalStorage();
    productosLS.forEach(function(productoLS, index) {
        if(productoLS.id === producto ){
            productosLS.splice(index, 1);
        };
    });
    localStorage.setItem('productos', JSON.stringify(productosLS));
};

function vaciarLocalStorage(){
    localStorage.clear();
}