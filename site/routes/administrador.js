var express = require('express');
var router = express.Router();
var controllerAdm = require("../controllers/controllersAdm");

/* GET home page. */
router.get('/', controllerAdm.CargarProductos);

module.exports = router;
