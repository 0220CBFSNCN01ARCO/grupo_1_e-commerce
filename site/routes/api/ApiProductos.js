var expres = require('express');
var router = expres.Router();
var APIControllerProductos = require('../../controllers/api/ApiControllerProductos');

router.get("/",APIControllerProductos.list);




module.exports = router;
