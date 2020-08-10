

// variables
let cantidadProductos = document.querySelector("#PRODUCTOS");
let PrecioTOTAL = document.querySelector("#PAGA");
let Titulo = document.querySelector("#Titulo");
let Texto = document.querySelector("#Texto");
let Comprar = document.querySelector('#Comprar');
let Img = document.querySelector('#imagenProductos');
let TOTAL = 0;
let CANTIDAD = 0 ;


leerEventos();

function leerEventos(){
    Comprar.addEventListener("click", Buy);
    document.addEventListener('DOMContentLoaded',totalProductos);
}

function totalProductos(){

   Img.src = "/images/giphy.gif"
   const TEXTO = document.createElement("ul");
   let productos = obtenerProductoLocalStorage();
   for (let i = 0; i < productos.length; i++) {
        TOTAL += productos[i].precio;
        CANTIDAD += Number(productos[i].cantidad);
        TEXTO.innerHTML += `<li>${productos[i].titulo}</li>`
   }
   if(CANTIDAD <= 1){
       Img.src = productos[0].img;
   }
   Titulo.innerHTML =`Listado de productos`;
   Texto.appendChild(TEXTO);
   cantidadProductos.innerHTML += CANTIDAD;
   PrecioTOTAL.innerHTML += `$ ${TOTAL}`;
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

function TEXTOCARD(){
    const TEXTO = document.createElement("ul");
   
}
function Buy(){
    let LS = obtenerProductoLocalStorage()
    data = {
        precioTotal: TOTAL,
        cantidad: CANTIDAD,
        productos: LS
    }
    fetch("/api/cart",{
        method: 'POST',
        body: JSON.stringify(data),
        headers: {
            'Content-Type':'application/json'
        }
    })
}
