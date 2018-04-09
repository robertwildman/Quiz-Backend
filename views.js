var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
    res.render('login');
});
router.get('/createaccount', function(req, res) {
    res.render('createaccount');
});
router.get('/admin', function(req, res) {
    res.render('admin');
});
router.get('/edituser', function(req, res) {
    res.render('edituser');
});
router.get('/editcategory', function(req, res) {
    res.render('admin');
});
router.get('/editquestion', function(req, res) {
    res.render('edituser');
});
module.exports = router;
