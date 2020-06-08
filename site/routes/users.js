var express = require('express');
var router = express.Router();
// controlador
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

/* Rutas Usuarios  */
router.get('/login');
router.post('/login');

router.get('/register');
router.post('/register');

router.get('/profile/edit');
router.put('/profile');
module.exports = router;
