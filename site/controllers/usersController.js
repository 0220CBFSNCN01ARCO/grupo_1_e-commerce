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
                password: bcrypt.hashSync(req.body.pass,10),
                category: "user",
                image: req.files[0].filename
            }
            usersJson.push(newUser);

            fs.writeFileSync('./data/Users.json', JSON.stringify(usersJson));
            return res.redirect('/');
        }else{

            return res.render('register', {'errores': errors.errors});

        }
        
    }
}
module.exports = UsersController; 