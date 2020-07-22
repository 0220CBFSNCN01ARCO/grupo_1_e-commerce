function GuestMiddle (req,res,next){
    if(req.session.usuarioLogueado !=  undefined){
        return res.redirect("/users/profile");
       
    }else{
       next();
      
    }
}

module.exports = GuestMiddle;