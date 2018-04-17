var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var session = require('express-session')
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var indexrouter = require('./routes');
var viewrouter = require('./views');
var db = require('./config/db');
var ejs = require('ejs');


var app = express();
// set the view engine to ejs
app.set('view engine', 'ejs');
app.use(session({
  cookieName: 'session',
  secret: 'quizbacklend',
  duration: 30 * 60 * 1000,
  activeDuration: 5 * 60 * 1000,
}));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/api',indexrouter);
app.use('/',viewrouter);
db.connect();

module.exports = app;
