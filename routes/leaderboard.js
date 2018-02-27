var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.send('Welcome to Leaderboard API');
});
router.get('/:id', function(req, res, next) {
      res.send('Leaderboard ID entered is '+ req.params.id);
});

module.exports = router;
