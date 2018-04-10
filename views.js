var express = require('express');
var router = express.Router();
var db = require('./Config/db');
var connection = db.connection;

router.get('/', function(req, res) {
    res.render('login',{error:null});
});
router.get('/createaccount', function(req, res) {
    res.render('createaccount');
});
router.get('/admin', function(req, res) {
  function results(results)
  {
    res.render('admin',{users:results});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);

});
router.get('/addquiz', function(req, res) {
  function results(results)
  {
    res.render('addquiz',{categories:results});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from category',results);

});
router.get('/edituser', function(req, res) {
    res.render('edituser');
});
router.get('/editcategory', function(req, res) {
    res.render('editcategory');
});
router.get('/editquestion', function(req, res) {
    res.render('editquestion');
});
module.exports = router;
