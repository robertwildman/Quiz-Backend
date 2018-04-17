var express = require('express');
var router = express.Router();
var db = require('../config/db');
var connection = db.connection;



router.get('/', function(req, res, next) {
    res.send('Welcome to Leaderboard API');
});
router.get('/getanswers/:id', function(req, res, next) {
    res.send('Welcome to Leaderboard API');
});


module.exports = router;
