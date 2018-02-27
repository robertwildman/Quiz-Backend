var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
    res.send('Welcome to Categories API');
});
router.get('/:id', function(req, res) {
    res.send('Categories ID entered is '+ req.params.id);
});
router.get('/:id/questions', function(req, res) {
    res.send('Categories ID entered is '+ req.params.id + ' questions');
});
module.exports = router;
