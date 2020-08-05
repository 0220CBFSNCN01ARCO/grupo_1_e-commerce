

function AuthMiddleAdmin (req,res,next){
    if(req.session.usuarioLogueado !=  undefined){
        if(req.session.usuarioLogueado.iduserCategory != 2){
            return res.redirect("/");
        }

        next(); 
    }else{
        return res.render('login', { errores: [
            {msg: "Inicia sesion para continuar"}
        ]});
    }
}

module.exports = AuthMiddleAdmin;