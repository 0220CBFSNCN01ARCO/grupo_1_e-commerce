const fs = require('fs');
const bcrypt = require('bcrypt');
const db = require('../database/models');
//let usersJson = JSON.parse(fs.readFileSync('./data/Users.json'));
function recordame(req,res,next){ 
    if(req.cookies.rmbr != undefined && req.session.usuarioLogueado == undefined){
        let userLog;
       db.Users.findByPk(req.cookies.rmbr).then(usuario =>{
            req.session.usuarioLogueado = usuario;
       })
        
    }
    next();
}
module.exports = recordame;