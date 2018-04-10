var express = require('express');
var router = express.Router();
var usersrouter = require('./users.js');
var questionsrouter = require('./questions.js');
var categoriesrouter = require('./categories.js');
var leaderboardrouter = require('./Leaderboard.js');
var quizrouter = require('./quiz.js');
/* GET home page. */
router.get('/', function(req, res, next) {
    res.send('Welcome to API');
});

router.use('/users', usersrouter);
router.use('/questions', questionsrouter);
router.use('/categories', categoriesrouter);
router.use('/Leaderboard', leaderboardrouter);
router.use('/quiz', quizrouter);


module.exports = router;
