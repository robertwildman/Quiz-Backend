var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
    res.send('Welcome to Questions API');
});
router.get('/:id', function(req, res) {
    res.send('Questions ID entered is '+ req.params.id);
});
router.get('/:id/answers', function(req, res) {
    res.send('Questions ID entered is '+ req.params.id + ' and their answer are');
});

module.exports = router;
