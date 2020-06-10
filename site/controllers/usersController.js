const fs = require('fs');
const bcrypt = require('bcrypt');
let {check, validationResult, body} = require('express-validator');
let usersJson = JSON.parse(fs.readFileSync('./data/Users.json'));



const UsersController = {
    RegisterGet: function(req,res){
      res.render('register');
    }, 
    RegisterPost: function(req,res,next){
        let errors = validationResult(req);
        if(errors.isEmpty()){
            let newUser = {
                id : usersJson.length + 1,
                first_name: req.body.fname,
                last_name: req.body.lname,
                email: req.body.email,
                password: bcrypt.hashSync(req.body.pass, 10),
                category: "user",
                image: req.files[0].filename
            }
            usersJson.push(newUser);

            fs.writeFileSync('./data/Users.json', JSON.stringify(usersJson));
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
        for (let i = 0; i < usersJson.length; i++) {
            if(usersJson[i].email == req.body.email){
                if(bcrypt.compareSync(req.body.password, usersJson[i].password)){
                    userLog = usersJson[i];
                    break;
                }
            }   
        }
        if(userLog == undefined){
            return res.render('login', { errores: [
                {msg: "La contraseña o el email es invalido"}
            ]});
        }
        if(req.body.remember != undefined){
            res.cookie('rmbr', bcrypt.hashSync(userLog.email , 10), {maxAge: 3600000});
        }
        req.session.usuarioLogueado = userLog;
        return res.redirect('/');
    }, 
}
module.exports = UsersController; 