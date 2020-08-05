var expres = require('express');
var router = expres.Router();
var APIControllerUser = require('../../controllers/api/ApiControllerUser');

router.get("/",APIControllerUser.list);




module.exports = router;
