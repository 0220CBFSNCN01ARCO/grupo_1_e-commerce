var express = require('express');
var router = express.Router();
var controllerIndex = require("../controllers/controllerIndex");

/* GET home page. */
router.get('/', controllerIndex.Mostrar);
router.get('/perfil', controllerIndex.Cuenta);
router.get('/ayuda', controllerIndex.Ayuda)

module.exports = router;