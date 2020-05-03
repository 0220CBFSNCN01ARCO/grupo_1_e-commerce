var express = require('express');
var router = express.Router();
var controllerProductos = require("../controllers/controllerProductos");

/* GET home page. */
router.get('/', controllerProductos.Mostrar);
router.get('/:id', controllerProductos.Detalles_productos);
module.exports = router;
