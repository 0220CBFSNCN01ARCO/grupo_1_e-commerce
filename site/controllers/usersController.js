const fs = require('fs');
const bcrypt = require('bcrypt');
let {check, validationResult, body} = require('express-validator');
let usersJson = JSON.parse(fs.readFileSync('./data/Users.json'));
let db = require('../database/models');





const UsersController = {
  
    RegisterGet: function(req,res){
      res.render('register');
    }, 
    RegisterPost: function(req,res,next){
        let errors = validationResult(req);
        if(errors.isEmpty()){

            db.Users.create({
                firstName: req.body.fname,
                lastName: req.body.lname,
                email: req.body.email,
                password: bcrypt.hashSync(req.body.pass, 10),
                avatar: req.files[0].filename,
                iduserCategory: 1
            })
            return res.redirect('/');
        }else{
            return res.render('register', {'errores': errors.errors});
        }   
    },
    LoginGet: function(req,res){
        res.render('login');
    }, 
    LoginPost: function(req,res){
        let userLog;
        db.Users.findOne({
            where:{
                email: req.body.email
            }
        }).then(user => {
            const match = bcrypt.compare(req.body.password, user.password);
            if(match){
                userLog = user;
            }else{
                return res.render('login', { errores: [
                    {msg: "La contraseña invalida"}
                ]});
            }
            if(req.body.remember != undefined){
                res.cookie('rmbr',bcrypt.hashSync(userLog.email,10), {maxAge: 3600000});
            }
            req.session.usuarioLogueado = userLog;
            return res.redirect('/');
        }).catch(error =>{ 
            return res.render('login', { errores: [
                {msg: "No existe el correo"}
            ]});
        });
    },
    ProfileGet: function(req,res){
        if( req.session.usuarioLogueado != undefined){
            return res.render('account', {user: req.session.usuarioLogueado });
        }
       return res.redirect("/users/login");
    },
    editProfileGet: function(req,res){
        res.render('accountEdit', {user: req.session.usuarioLogueado });
    },
    editProfilePost:  function(req,res,next){
        let user = req.session.usuarioLogueado.id;
        let imagen = req.session.usuarioLogueado.avatar
        if(req.files[0] != undefined){
             imagen = req.files[0].filename;
        }
        db.Users.update({
            firstName: req.body.fname,
            lastName: req.body.lname,
            email: req.body.email,
            password: bcrypt.hashSync(req.body.pass, 10),
            avatar: imagen
            
        },{ 
            where: {
                id: user
            }
        });
        req.session.destroy();
        return res.redirect('/');
    },
    logOUT: function(req,res){
       req.session.destroy();
       res.redirect("/");
    }
}
module.exports = UsersController; 