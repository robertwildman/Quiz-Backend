var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
    res.send('Welcome to User API');
});
router.get('/:id', function(req, res) {
    res.send('User ID entered is '+ req.params.id);
});
router.get('/:id/getAnsweredQuestions', function(req, res) {
    res.send('User ID entered is '+ req.params.id + ' Answer Questions');
});
router.get('/:id/getScores', function(req, res) {
    res.send('User ID entered is '+ req.params.id + ' Get Scores ');
});
router.get('/:id/getCategories', function(req, res) {
    res.send('User ID entered is f '+ req.params.id + ' Get Categories');
});
module.exports = router;
