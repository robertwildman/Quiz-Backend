var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'Robert',
  database : 'quiz'
});
function query(input,callback)
{
  connection.connect(function(err) {
    if (err) {
    console.error('error connecting: ' + err.stack);
    }
    console.log('connected as id ' + connection.threadId);
  });
  connection.query('SELECT * from user', function (error, results) {
    if (error) throw error;
    callback(results);
  });
  connection.end();

}
module.exports.query = query;
