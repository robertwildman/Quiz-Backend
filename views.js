var express = require('express');
var router = express.Router();
var db = require('./Config/db');
var connection = db.connection;

router.get('/', function(req, res) {
  if (req.session && req.session.user) {

      res.render('homeboards',{user:req.session.user});
  }else
  {
      res.render('login',{error:null});
  }

});
router.get('/createaccount', function(req, res) {
    res.render('createaccount');
});
//This will be used for getting all users
router.get('/admin/users/', function(req, res) {
  function results(results)
  {
    var users = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      users.push(results[i]);
      }
    }
    res.render('admin',{users:users});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);
});
//This will be used for all the questions
router.get('/admin/questions', function(req, res) {
  function results(results)
  {
    var questions = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      questions.push(results[i]);
      }
    }
    res.render('admin',{question:questions});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from question',results);
});
router.get('/admin', function(req, res) {
  function results(results)
  {
    var users = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      users.push(results[i]);
      }
    }
    res.render('admin',{users:users});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);
});
router.get('/admin', function(req, res) {
  function results(results)
  {
    var users = [];
    for(var i =0; i < results.length; i++)
    {
      if(i < 26)
      {
      users.push(results[i]);
      }
    }
    res.render('admin',{users:users});
  }
  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from user',results);
});
router.get('/addquiz', function(req, res) {

  //First bit is the query and the second is the callback needed to recive the results
  db.query('SELECT * from category',function(results)
  {
    res.render('addquiz',{categories:results});
  });

});
router.get('/edituser', function(req, res) {
    res.render('edituser');
});
router.get('/editcategory', function(req, res) {
    res.render('editcategory');
});
router.get('/editquestion', function(req, res) {
    res.render('editquestion');
});
router.get('/homequiz', function(req, res) {
  if (req.session && req.session.user) {
    function results(result)
    {
      console.log(result);
        res.render('homequiz',{user:req.session.user,quizes:result});
    }
    //First bit is the query and the second is the callback needed to recive the results
    db.query('Select * from userquiz u RIGHT join quiz q on u.QuizID = q.QuizID where u.UserID = ' + req.session.user.UserID,results);
  }else
  {
      res.render('login',{error:null});
  }
});
router.get('/quiz/:id/', function(req, res) {
  makequiz(req.params.id,function(quiz,quiztitle)
{
    res.render('quiz',{user:req.session.user,quiz:quiz,quiztitle:quiztitle,quizid:req.params.id});
});

});


function makequiz(id,callback)
{

  function results(result)
  {
    //Loop through questions making the answers match up
    var questionidused = [];
    var quizarray = {};
    quizarray['Questions'] = [];
    result.forEach(function (q)
    {
      if(questionidused.indexOf(q.QuestionID) > -1)
      {
        quizarray['Questions']["ID:"+q.QuestionID]["Answers"].push(q.Answer+"$,$"+q.CORRECT_ANSWER);
      }else {
        questionidused.push(q.QuestionID);
        quizarray['Questions']["ID:"+q.QuestionID] = [];
        quizarray['Questions']["ID:"+q.QuestionID].Question = q.Question;
        quizarray['Questions']["ID:"+q.QuestionID].QuestionID = q.QuestionID;
        quizarray['Questions']["ID:"+q.QuestionID]["Answers"] = [];
        quizarray['Questions']["ID:"+q.QuestionID]["Answers"].push(q.Answer+"$,$"+q.CORRECT_ANSWER);

      }
    });

    quiz = [];
    questionidused.forEach(function(id)
    {
      var answers = [];
      quizarray['Questions']["ID:"+id]["Answers"].forEach(function(answer)
      {
        var inputspilt = answer.split('$,$');
        answers.push({answer:inputspilt[0],state:inputspilt[1]});
      });
      quiz.push({id: id,Question:quizarray['Questions']["ID:"+id].Question,Answers:answers});

  });
  db.query('SELECT QuizName from quiz where QuizID = ' + id ,function(quiztitle)
  {
    console.log(quiz);
    console.log(quiztitle[0].QuizName);
    callback(quiz,quiztitle[0].QuizName);
  });

  }
  //Get all the questions for the quiz
  db.query('Select * from quizquestion qq RIGHT join question q on qq.QuestionID = q.QuestionID Right join questionanswer qa on qa.QuestionID = qq.QuestionID where qq.QuizID = ' + id ,results);

}
module.exports = router;
