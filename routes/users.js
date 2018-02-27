var express = require('express');
var router = express.Router();
var db = require('../config/db');
//Return all users
router.get('/', function(req, res) {
  function results(results)
  {
    console.log(results);
  }
  db.query('ewf',results);
  res.send("fwe");
});
//Return  user based on incomming ID
router.get('/:id', function(req, res) {
    res.send('User ID entered is '+ req.params.id);
});
//Return user's answer questions based on incomming ID
router.get('/:id/getAnsweredQuestions', function(req, res) {
    res.send('User ID entered is '+ req.params.id + ' Answer Questions');
});
//Return user's scores based on the incomming ID
router.get('/:id/getScores', function(req, res) {
    res.send('User ID entered is '+ req.params.id + ' Get Scores ');
});
//Return user's categories based on the incomming ID.
router.get('/:id/getCategories', function(req, res) {
    res.send('User ID entered is f '+ req.params.id + ' Get Categories');
});
//This will be used when creating a new user.
//Will need the following or an error will be thrown. Username, First name, Second name, Email, Password
router.post('/new', function(req, res)
{
    var username = req.body.user.username;
    var firstName = req.body.user.firstname;
    var lastName = req.body.user.lastname;
    var email = req.body.user.email;
    var password = req.body.user.password;
    if(username == null || firstName == null || lastName == null || email == null || password == null)
    {
      res.send('ERROR');
    }else {
      res.send(username + ' ' + firstName + ' ' + lastName + ' ' + email + ' ' + password);
    }
});
//This will be used when editing a new user.
//Will need the following of an error will be thrown. Username, First name, last name, email ,password and user id
router.post('/edit', function(req, res)
{
    var userid = req.body.user.userid;
    var username = req.body.user.username;
    var firstName = req.body.user.firstname;
    var lastName = req.body.user.lastname;
    var email = req.body.user.email;
    var password = req.body.user.password;
    if(userid == null || username == null || firstName == null || lastName == null || email == null || password == null)
    {
      res.send('ERROR');
    }else {
      res.send(userid + ' ' + username + ' ' + firstName + ' ' + lastName + ' ' + email + ' ' + password);
    }
});

//This will be used when promoting a user to admin rank
//Will need the following or an error will be thrown User ID
router.post('/promote', function(req, res)
{
    var userid = req.body.user.userid;
    if(userid == null)
    {
      res.send('ERROR');
    }else {
      res.send(userid + ' Promoted');
    }
});

//This will be used when demoting a user to admin rank
//Will need the following or an error will be thrown User ID
router.post('/demote', function(req, res)
{
    var userid = req.body.user.userid;
    if(userid == null)
    {
      res.send('ERROR');
    }else {
      res.send(userid + ' demoted');
    }
});



module.exports = router;
