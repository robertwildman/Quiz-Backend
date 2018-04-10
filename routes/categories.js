var express = require('express');
var router = express.Router();
var db = require('../config/db');
var connection = db.connection;
router.get('/', function(req, res, next) {
    res.send('Welcome to Categories API');
});
router.get('/:id', function(req, res) {
    res.send('Categories ID entered is '+ req.params.id);
});
router.get('/:id/questions', function(req, res) {
  var CategoryID = req.params.id;
  console.log(CategoryID);
  function results(results)
  {
      res.send(results);
  }
  db.query('SELECT * from question WHERE CategoryID = ' + CategoryID ,results);
});

module.exports = router;
