const fs = require('fs');
const bcrypt = require('bcrypt');
let usersJson = JSON.parse(fs.readFileSync('./data/Users.json'));
function recordame(req,res,next){ 
    if(req.cookies.rmbr != undefined && req.session.usuarioLogueado == undefined){
        let userLog;
        for (let i = 0; i < usersJson.length; i++) {
            if(bcrypt.compareSync(usersJson[i].email, req.cookies.rmbr)){
                userLog = usersJson[i];
                break;  
            }   
        }
        req.session.usuarioLogueado = userLog;
    }
    next();
}
module.exports = recordame;