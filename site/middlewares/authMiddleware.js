function AuthMiddle (req,res,next){
    if(req.session.usuarioLogueado !=  undefined){
        next();
    }else{
        return res.render('login', { errores: [
            {msg: "Inicia sesion para continuar"}
        ]});
    }
}

module.exports = AuthMiddle;