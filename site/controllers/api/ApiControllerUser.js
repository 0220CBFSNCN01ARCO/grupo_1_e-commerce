let db = require('../../database/models');

let ApiUserController = {
    list: function(req,res){
        db.Users.findAll({
            include:[
                {
                    association: "UserCategory"
                }
            ]
        }).
        then(Usuarios =>{
            let response = {
                meta: {
                    status: 200,
                    url: "localhost:3000/api/users",
                    total_Users: Usuarios.length
                    
                },
                data: Usuarios
            }
            res.json(response);
        })
    }
}

module.exports = ApiUserController;