const fs = require('fs');
let productosJson = JSON.parse(fs.readFileSync('./data/Productos.json'));

const cuentaAdm = {
    Menu: function(req,res){
        res.render('AdminConsole', {"productos" : productosJson});
    }
}
module.exports = cuentaAdm;