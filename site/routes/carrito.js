var express = require('express');
var router = express.Router();
var controllerCarrito = require("../controllers/controllerCarrito");

/* GET home page. */
router.get('/', controllerCarrito.Mostrar);

module.exports = router;
