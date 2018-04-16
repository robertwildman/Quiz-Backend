var express = require('express');
var router = express.Router();
var db = require('./Config/db');
var connection = db.connection;

router.get('/', function(req, res) {
  if (req.session && req.session.user) {

      res.render('homeboards',{user:req.session.user});
  }else
  {
      res.render('login',{error:null});
  }

});
router.get('/createaccount', function(req, res) {
    res.render('createaccount');
});
//This will be used for getting all users
router.get('/admin/users/', function(req, res) {
  function results(results)
  {
    var users = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      users.push(results[i]);
      }
    }
    res.render('admin',{users:users});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);
});
//This will be used for all the questions
router.get('/admin/questions', function(req, res) {
  function results(results)
  {
    var questions = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      questions.push(results[i]);
      }
    }
    res.render('admin',{question:questions});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from question',results);
});
router.get('/admin', function(req, res) {
  function results(results)
  {
    var users = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      users.push(results[i]);
      }
    }
    res.render('admin',{users:users});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);
});
router.get('/admin', function(req, res) {
  function results(results)
  {
    var users = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      users.push(results[i]);
      }
    }
    res.render('admin',{users:users});
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
