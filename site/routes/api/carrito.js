var expres = require('express');
var router = expres.Router();
var APIControllerCarrito = require('../../controllers/api/ApiControllerCarrito');

router.post("/", APIControllerCarrito.Update);




module.exports = router;
