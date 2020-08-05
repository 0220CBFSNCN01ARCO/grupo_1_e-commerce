var express = require('express');
var router = express.Router();
var controllerProductos = require("../controllers/controllerProductos");
var AuthMiddleware = require('../middlewares/authMiddleware');
var multer = require('multer');
var path = require('path');

var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'public/images/products')
    },
    filename: function (req, file, cb) {
      cb(null, file.fieldname + '-' + Date.now()+path.extname(file.originalname));
    }
  })
   
  var upload = multer({ storage: storage })

/* Rutas productos  */

router.get('/search',controllerProductos.Buscar);
router.get('/', controllerProductos.Listado_Productos);
router.get('/create', controllerProductos.Creacion_Productos);
router.get('/:id',AuthMiddleware, controllerProductos.Detalles_productos);
router.post('/',upload.any(), controllerProductos.Accion_Creacion_Productos);
router.get('/:id/edit', controllerProductos.Edicion_productos);
router.put('/:id',upload.any(), controllerProductos.Accion_Edicion);
router.delete('/:id', controllerProductos.Accion_Borrado);
router.get('/categorias/:category', controllerProductos.FindByCategory);



module.exports = router;
