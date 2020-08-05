var express = require('express');
var router = express.Router();
var controllerAdm = require("../controllers/controllersAdm");
var AuthAdmin = require('../middlewares/middlewaresAdmin');
/* GET home page. */
router.get('/', AuthAdmin , controllerAdm.Menu);

module.exports = router;
