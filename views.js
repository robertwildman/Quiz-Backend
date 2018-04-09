var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
    res.render('login',{error:null});
});
router.get('/createaccount', function(req, res) {
    res.render('createaccount');
});

module.exports = router;
