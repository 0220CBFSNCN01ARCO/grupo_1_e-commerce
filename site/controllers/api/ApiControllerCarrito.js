let db = require('../../database/models');

let ApiCarritoController = {
    Update: function (req, res) {
        let user = req.session.usuarioLogueado.id;
        db.Cart.create({
            totalPrice: req.body.precioTotal,
            cantItems: req.body.cantidad,
            idUsers: user,
            productos: {
                
            }
        },{
            include: [{association: "productos"}]
        });
        res.redirect('/');

    }
}

module.exports = ApiCarritoController;