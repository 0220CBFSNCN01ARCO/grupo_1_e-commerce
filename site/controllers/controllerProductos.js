const Productos = {
    Mostrar: function(req,res){
        res.render('productos', { title: 'Todos los productos' });
    },
    Detalles_productos: function(req,res){
        idproducto = req.params.id;
        res.render('detalleProductos', { title: `Detalle del producto con id: ${idproducto}` });
    }
}
module.exports = Productos;