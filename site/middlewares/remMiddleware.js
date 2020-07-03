
const bcrypt = require('bcrypt');
const db = require('../database/models');
//let usersJson = JSON.parse(fs.readFileSync('./data/Users.json'));
function recordame(req,res,next){ 
    if(req.cookies.rmbr != undefined && req.session.usuarioLogueado == undefined){
        let userLog;
        db.Users.findAll()
        .then(users => {
            for (let i = 0; i < users.length; i++) {
                if(bcrypt.compareSync(users[i].email,req.cookies.rmbr)){
                    req.session.usuarioLogueado = users[i];
                    break;
                }
            }
            next();
        });
        
    }else{
        next();
    }
    
}
module.exports = recordame;