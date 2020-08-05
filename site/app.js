var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var methodOverride = require('method-override');
var session = require('express-session');

var indexRouter = require('./routes/index');
var productosRouter = require('./routes/productos');
var adminRouter = require('./routes/administrador');
var userRouter = require('./routes/users');
var apiRouterUser = require('./routes/api/ApiUser');
var apiRouterProductos = require('./routes/api/ApiProductos');
var recordame = require('./middlewares/remMiddleware');


var app = express();

// view engine setup


app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(session({secret:'Mermelada de fresa'}))
app.use(express.static(path.join(__dirname, 'public')));
app.use(methodOverride("_method"));
app.use(recordame);


app.use('/', indexRouter);
app.use('/productos', productosRouter);
app.use('/admin', adminRouter);
app.use('/users', userRouter);
app.use('/api/users', apiRouterUser);
app.use('/api/products',apiRouterProductos);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
