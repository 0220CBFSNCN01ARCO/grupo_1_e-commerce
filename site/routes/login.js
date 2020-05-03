var express = require('express');
var router = express.Router();
var controllerLogin = require("../controllers/controllerLogin");

/* GET home page. */
router.get('/', controllerLogin.Mostrar);

module.exports = router;
