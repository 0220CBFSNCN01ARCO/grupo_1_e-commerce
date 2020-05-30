var express = require('express');
var router = express.Router();
var controllerAdm = require("../controllers/controllersAdm");

/* GET home page. */
router.get('/', controllerAdm.Menu);

module.exports = router;
