const fs = require('fs');
let productosJson = JSON.parse(fs.readFileSync('./data/Productos.json'));

const Productos = {
    Listado_Productos: function(req,res){
        res.render('productos', {"productos" : productosJson})
    },
    Detalles_productos: function(req,res){
        idproducto = req.params.id;
        let detalle = productosJson.find((item)=>{
            return item.id == idproducto;
        });
        if(detalle == null){
            return res.send("no existe el producto");
        }
        return res.render('productDetail', {"producto" : detalle});

    },
    Creacion_Productos: function(req,res){
        res.render('productAdd');
    },
    Accion_Creacion_Productos: function(req,res,next){
        let newProduct = {
            id: productosJson.length + 1,
            name: req.body.nameproduct,
            description: req.body.descriproduct,
            price: Number(req.body.priceproduct),
            image: req.files[0].filename,
            stock: Number(req.body.stockproduct),
        }
        productosJson.push(newProduct);

        fs.writeFileSync('./data/Productos.json', JSON.stringify(productosJson));

        res.redirect('/productos');


    },
    Edicion_productos:  function(req,res){
        idproducto = req.params.id;
        let detalle = productosJson.find((item)=>{
            return item.id == idproducto;
        });
        if(detalle == null){
            return res.send("no existe el producto");
        }
        return res.render('productEdit', {"productToEdit" : detalle});
    },
    Accion_Edicion: function(req,res,next){
        idproducto = req.params.id;
        for (let i = 0; i < productosJson.length; i++) {
           if(productosJson[i].id == idproducto){
               productosJson[i].name = req.body.nameproduct;
               productosJson[i].description = req.body.descriproduct;
               productosJson[i].price = Number(req.body.priceproduct);
               productosJson[i].image = req.files[0].filename;
               productosJson[i].stock = Number(req.body.stockproduct);
           }
        }
        fs.writeFileSync('./data/Productos.json', JSON.stringify(productosJson));
        return res.redirect('/productos');

    },
    Accion_Borrado: function(req,res){
        idproducto = req.params.id;
        let productosBorrados = productosJson.filter((producto) =>{
            return producto.id != idproducto;
        });
        fs.writeFileSync('./data/Productos.json', JSON.stringify(productosBorrados));
        return res.redirect('/productos');
    }
}
module.exports = Productos;