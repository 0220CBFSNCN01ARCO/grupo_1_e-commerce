const index = {
    Mostrar: function(req,res){
        if( req.session.usuarioLogueado != undefined){
            return res.render('index', { title: 'Home', user: req.session.usuarioLogueado });
        }
       return res.render('index', { title: 'Home' });
    }
}
module.exports = index;