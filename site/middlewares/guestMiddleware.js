function GuestMiddle (req,res,next){
    if(req.session.usuarioLogueado !=  undefined){
        return res.send('Ya estas logueado / pagina en construccion');
       
    }else{
       next();
       console.log("holi");
      
    }
}

module.exports = GuestMiddle;