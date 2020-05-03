const cuentaAdm = {
    CargarProductos: function(req,res){
        res.render('cargaDeProductoAdm', { title: ` cuenta de administrador - Seccion: Cargar del Producto` }); 
    }
}
module.exports = cuentaAdm;