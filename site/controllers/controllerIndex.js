const index = {
    Mostrar: function(req,res){
        if( req.session.usuarioLogueado != undefined){
            return res.render('index', { title: 'Home', user: req.session.usuarioLogueado });
        }
       return res.render('index', { title: 'Home' });
    },
    Ayuda: function(req,res){
       return res.render('ayuda', { title: 'Ayuda' });
    }
}
module.exports = index;