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
  res.send("body");
    var body = req.body.results;
    processlines(body);
});
async function processlines(body)
{
  for(const bodyitem of body)
  {
    await importline(bodyitem);
  }
  console.log("Done!");
}

function importline(body)
{
  CategoryCheck(body,callback);
  function callback(body)
  {
    function callback1(CategoryID)
    {
      console.log(CategoryID);
    }
    getCategoryID(body.category,callback1);
  }
}







function addQuestion(question)
{

}
function CategoryCheck(body,callback)
{
  function results(results)
  {
      if(results.length == 0)
      {
        addCategory(body.category,body,callback);
      }
      else {
        callback(body);
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
      callback(results[0].CategoryID);
  }
  //First bit is the query and the second is the callback needed to recive the results
  var query = 'SELECT CategoryID from category where Name = "' + category +'"';
  db.query(query,results);
}

function addCategory(category,body,callback)
{
  function result1(result1)
  {
    callback(body);
  }
  //Add Category
  var query1 = 'INSERT INTO `category` (`CategoryID`, `Name`) VALUES (NULL,"'+ category+'");';
  db.query(query1,result1);
}
module.exports = router;
