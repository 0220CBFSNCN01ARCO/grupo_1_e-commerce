const Carrito = {
    Mostrar: function(req,res){
        res.render('carritoDeCompras', { title: 'Carrito de Compras' });
    }
}
module.exports = Carrito;