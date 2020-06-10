function GuestMiddle (req,res,next){
    if(req.session.usuarioLogueado ==  undefined){
        next();
    }else{
        return res.send('Ya estas logueado / pagina en construccion');
    }
}

module.exports = GuestMiddle;