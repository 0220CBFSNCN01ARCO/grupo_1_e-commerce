const fs = require('fs');
let productosJson = JSON.parse(fs.readFileSync('./data/Productos.json'));


const Productos = {
    Listado_Productos: function(req,res){
        res.send(productosJson);
    },
    Detalles_productos: function(req,res){
        idproducto = req.params.id;
        let detalle = productosJson.find((item)=>{
            return item.id == idproducto;
        });
        if(detalle == null){
            return res.send("no existe el producto");
        }
        return res.render('productDetail');

    },
    Creacion_Productos: function(req,res){
        res.render('productAdd');
    },
    Accion_Creacion_Productos: function(req,res){


    },
    Edicion_productos:  function(req,res){

    },
    Accion_Edicion: function(req,res){

    },
    Accion_Borrado: function(req,res){

    }
}
module.exports = Productos;