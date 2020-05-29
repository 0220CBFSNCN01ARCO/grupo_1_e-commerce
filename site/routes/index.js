var express = require('express');
var router = express.Router();
var controllerIndex = require("../controllers/controllerIndex");

/* GET home page. */
router.get('/', controllerIndex.Mostrar);

module.exports = router;