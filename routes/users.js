var express = require('express');
var router = express.Router();
var db = require('../config/db');
var connection = db.connection;

//Return all users
router.get('/', function(req, res) {
  //Callback from the query
  function results(results)
  {
    res.send(results);
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);
});

//Return  user based on incomming ID
router.get('/:id', function(req, res) {
  //Callback from the query
  function results(results)
  {
    res.send(results);
  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT * from user where UserID = ' + req.params.id;
  db.query(query,results);
});
//Return user's answer questions based on incomming ID
router.get('/:id/getAnsweredQuestions', function(req, res) {
  //Callback from the query
  function results(results)
  {
    res.send(results);
  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT QuestionID from userquestioncorrect where UserID = ' + req.params.id;
  db.query(query,results);
});
//Return user's scores based on the incomming ID
router.get('/:id/getScores', function(req, res) {
  //Callback from the query
  function results(results)
  {
    res.send(results);
  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT CategoryID,score from score where UserID = ' + req.params.id;
  db.query(query,results);
});
//Return user's categories based on the incomming ID.
router.get('/:id/getCategories', function(req, res) {
  // NOT WORKING WILL RETURN TO IT.
  //Callback from the query
  function results(ids)
  {
    var answer = "";
    //Callback from the query
    function results(results)
    {
      answer = answer + results;
    }
    console.log(ids);
    //First bit is the query and the second is the callback needed to recive the results
    for(var i = 0; i < ids.length; i++)
    {
      var query = 'SELECT Name from Category where CategoryID = ' + ids[i].CategoryID;
      db.query(query,results);
    }

  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT CategoryID from score where UserID = ' + req.params.id;
  db.query(query,results);
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
      res.send('ERROR MISSING INFOMATION');
    }else {
      function results(results)
      {
        res.send("Successfull!");
      }
      function result(id)
      {
        var newid = id.length + 1;
        var query = 'INSERT INTO User (`UserID`, `Firstname`, `Lastname`, `Email`, `Username`, `Password`, `Role`) VALUES (' + connection.escape(newid) + ',' + connection.escape(firstName) + ',' + connection.escape(lastName) + ',' + connection.escape(email) + ',' + connection.escape(username) + ',' + connection.escape(password) + ',"User");';
        db.query(query,results);
      }
      var query = 'SELECT UserID FROM user';
      db.query(query,result);
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
      function results(results)
      {
        res.send("Successfull!");
      }

      var query = 'UPDATE User SET FirstName = ' + connection.escape(firstName) + ',LastName = ' + connection.escape(lastName) + ',Email = ' + connection.escape(email) + ', Username = ' + connection.escape(username) + ', Password = ' + connection.escape(password) +' WHERE UserID = ' + connection.escape(userid);
      db.query(query,results);
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
      function results(results)
      {
        res.send("Successfull!");
      }
      var query = 'UPDATE User SET Role = "Admin" WHERE UserID =' + userid;
      db.query(query,results);
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
      function results(results)
      {
        res.send("Successfull!");
      }
      var query = 'UPDATE User SET Role = "User" WHERE UserID =' + userid;
      db.query(query,results);
    }
});

//User Logining in
router.post('/login', function(req, res)
{
  console.log(req.body);
    var username = req.body.user.username;
    var password = req.body.user.password;
    if(username == null || password == null)
    {
      res.send("failed");
    }else {
      function results(results)
      {
        console.log(results);
        console.log(results[0]);
        console.log(results[0].UserID);
        if(results.length == 0)
        {
          res.send("failed");
        }else {
          if(results[0].Password == password)
          {
            var m = '{"UserID": '  + results[0].UserID + '}';
            //res.send(m);
            var path = require('path');

            res.sendFile(path.resolve(__dirname+'../../Views/homeboards.html'));
          }else {
            res.send("failed");
          }
        }

      }
      var query = 'Select Username ,Password,UserID from user WHERE Username = ' + connection.escape(username);
      db.query(query,results);
    }
});

//User Logging out
router.post('/logout', function(req, res)
{
      res.send('Logged Out');
});


module.exports = router;
