const fs = require('fs');
let productosJson = JSON.parse(fs.readFileSync('./data/Productos.json'));
let db = require('../database/models');
const Op = db.Sequelize.Op;
const Productos = {
    Buscar: function(req,res){
        let search = req.query.id;
        db.Product.findAll({
            where:{
                name: {[Op.like]: '%' + search + "%"}
            }
        })
        .then(product => {
            return res.render('productos', {"productos" : product})
        });
    },
    Listado_Productos: function(req,res){
        db.Product.findAll()
        .then(product => {
            return res.render('productos', {"productos" : product})
        });
       
    },
    Detalles_productos: function(req,res){
        idproducto = req.params.id;
        db.Product.findByPk(idproducto)
        .then(product => {
            return res.render('productDetail', {"producto" : product})
        });
    },
    Creacion_Productos: function(req,res){
        db.Category.findAll().then(category =>{
            return res.render('productAdd', {"categorias" : category});
        });
        
    },
    Accion_Creacion_Productos: function(req,res,next){
        db.Product.create({
            name: req.body.nameproduct,
            description: req.body.descriproduct,
            price:  Number(req.body.priceproduct),
            stock:  Number(req.body.stockproduct),
            img: req.files[0].filename ,
            idCategory: req.body.category,
        });
        return res.redirect('/productos');
    },
    Edicion_productos:  function(req,res){
        idproducto = req.params.id;
        db.Product.findByPk(idproducto).then(producto =>{
            db.Category.findAll().then(category =>{
                return res.render('productEdit', {"categorias" : category,
                "productToEdit": producto});
            });
        });
       
    },
    Accion_Edicion: function(req,res,next){
        idproducto = req.params.id;
        db.Product.update({
            name: req.body.nameproduct,
            description: req.body.descriproduct,
            price:  Number(req.body.priceproduct),
            stock:  Number(req.body.stockproduct),
            img: req.files[0].filename ,
            idCategory: req.body.category,
        },{ 
            where: {
                id: idproducto
            }
        });
        return res.redirect('/productos');
    },
    Accion_Borrado: function(req,res){
        let idproducto = req.params.id;
        db.Product.destroy({
            where: {
                id: idproducto
            }
        });
        return res.redirect('/productos');
    },
    FindByCategory: function(req,res){
        let Category = req.params.category;
        db.Category.findAll({
            include: [{association: "products"}],
            where: {
                name: Category
            }
        }).then(categorys =>{
            return res.render('productos', {"productos" : categorys[0].products})
        });
    },
    BuyProduct: function(req, res){
        res.render('buyProducts');
    }
}
module.exports = Productos;