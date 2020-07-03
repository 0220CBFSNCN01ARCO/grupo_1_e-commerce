const fs = require('fs');
//let productosJson = JSON.parse(fs.readFileSync('./data/Productos.json'));
let db = require('../database/models');

const cuentaAdm = {
    Menu: function(req,res){
        db.Product.findAll()
        .then(product => {
            res.render('AdminConsole', {"productos" : product})
        });
    }
}
module.exports = cuentaAdm;