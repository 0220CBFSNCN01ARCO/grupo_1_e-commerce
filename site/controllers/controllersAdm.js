const cuentaAdm = {
    Menu: function(req,res){
        res.render('AdminConsole', {
            'titulo': "Hola"
        });; 
    }
}
module.exports = cuentaAdm;