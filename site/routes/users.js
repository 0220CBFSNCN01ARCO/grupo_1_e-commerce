var express = require('express');
var router = express.Router();
var UserController = require('../controllers/usersController');
var GuestMiddleware = require('../middlewares/guestMiddleware');
var multer = require('multer');
var path = require('path');
let {check, validationResult, body} = require('express-validator');

var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'public/images/users')
    },
    filename: function (req, file, cb) {
      cb(null, file.fieldname + '-' + Date.now()+path.extname(file.originalname));
    }
  })
   
  var upload = multer({ storage: storage })

/* Rutas Usuarios  */
router.get('/login',GuestMiddleware, UserController.LoginGet);
router.post('/login', UserController.LoginPost);

router.get('/register',GuestMiddleware, UserController.RegisterGet);
router.post('/register',upload.any(),[ 
  check('email').isEmail().withMessage('Ingresa un correo valido'),
  check('emailConfirm').custom((value,{req, loc, path}) => {
    if (value !== req.body.email) {
        throw new Error("los emails no coinciden");
    } else {
        return value;
    }
  }),
  check('pass').isLength({min: 8}).withMessage('la contraseña debe tener almenos 8 caracteres'),
  check('fname').isLength({min: 1}).withMessage('Ingresa tu nombre'),
  check('lname').isLength({min: 1}).withMessage('Ingresa tu apellido')

], UserController.RegisterPost);
router.get('/profile', UserController.ProfileGet);
router.get('/profile/edit');
router.put('/profile');
module.exports = router;
