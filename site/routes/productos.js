var express = require('express');
var router = express.Router();
var controllerProductos = require("../controllers/controllerProductos");

/* GET home page. */
router.get('/', controllerProductos.Listado_Productos);
router.get('/create', controllerProductos.Creacion_Productos);
router.get('/:id', controllerProductos.Detalles_productos);
router.post('/', controllerProductos.Accion_Creacion_Productos);
router.get('/:id/edit', controllerProductos.Edicion_productos);


module.exports = router;
