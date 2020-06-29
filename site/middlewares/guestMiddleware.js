function GuestMiddle (req,res,next){
    if(req.session.usuarioLogueado !=  undefined){
        console.log(req.session.usuarioLogueado);
        return res.send('Ya estas logueado / pagina en construccion');
    }else{
       next();
    }
}

module.exports = GuestMiddle;