let db = require('../../database/models');
const { urlencoded } = require('express');
const Productos = require('../controllerProductos');

let ApiUserController = {
    list: function(req,res){
        db.Product.findAll().
        then(Productos =>{
            let response = {
                meta: {
                    status: 200,
                    url: "localhost:3000/api/products",
                    total_Products: Productos.length
                    
                },
                data: Productos
            }
            res.json(response);
        })
    }
}

module.exports = ApiUserController;