var express = require('express');
var router = express.Router();
var db = require('../config/db');
var connection = db.connection;
var async = require("async");

router.get('/', function(req, res) {
    res.send('Welcome to Questions API');
});
router.get('/:id', function(req, res) {
    res.send('Questions ID entered is '+ req.params.id);
});
router.get('/:id/answers', function(req, res) {
    res.send('Questions ID entered is '+ req.params.id + ' and their answer are');
});
router.post('/import', function(req, res)
{
  //Sorts the Json File out and sends it out to the user!
  var body = req.body.results;
  res.send("body");
  async.eachSeries(body,function(item, cb){
    setTimeout(function() {
    CategoryCheck(item,function()
    {
      addtodb(item,function()
      {
        return cb();
      });
    });
    }, Math.random()*2000);
  }, function(err){
    console.log('#1 Final call ', err);
  });
});




function addtodb(body,callback)
{
  console.log(body.category);
    function callback1(CategoryID)
    {
      var query = 'INSERT INTO question (`QuestionID`, `CategoryID`, `Question`) VALUES (null,' + connection.escape(CategoryID) + ',' + connection.escape(body.question) + ');';
      db.query(query,function()
      {
        function results(results)
        {
          console.log(results[0]);
          //Send off the Correct Answer
          var query = 'INSERT INTO questionanswer (`AnswerID`, `QuestionID`, `Answer`,`CORRECT_ANSWER`) VALUES (null,' + connection.escape(results[0].QuestionID) + ',' + connection.escape(body.correct_answer) + ',1);';
          db.query(query,function(){});
          //Send off the incorrect Answers
          for(var i = 0; i < 3; i++)
          {
            var query = 'INSERT INTO questionanswer (`AnswerID`, `QuestionID`, `Answer`,`CORRECT_ANSWER`) VALUES (null,' + connection.escape(results[0].QuestionID) + ',' + connection.escape(body.incorrect_answers[i]) + ',0);';
            db.query(query,function(){});
          }
          console.log(body.incorrect_answers);
        }
        var query = 'SELECT QuestionID from question where Question = ' + connection.escape(body.question);
        db.query(query,results);











      });
      callback();
    }
    getCategoryID(body.category,callback1);
}


function addQuestion(question)
{

}
function CategoryCheck(body,callback)
{
  console.log("2");
  function results(results)
  {
      if(results.length == 0)
      {
        addCategory(body.category,function(){callback();});
      }else {
        callback();
      }
  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT CategoryID from category where Name = "' + body.category+'"';
  db.query(query,results);
}

function getCategoryID(category,callback)
{
  function results(results)
  {
    console.log(results);
      callback(results[0].CategoryID);
  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT CategoryID from category where Name = "' + category +'"';
  db.query(query,results);
}
function addCategory(category,callback)
{
  function result1(result1)
  {
    callback();
  }
  //Add Category
  var query1 = 'INSERT INTO `category` (`CategoryID`, `Name`) VALUES (NULL,"'+ category+'");';
  db.query(query1,result1);
}
module.exports = router;
