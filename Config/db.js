var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'Robert',
  database : 'quiz_redo'
});
function connect()
{
  connection.connect(function(err) {
    if (err) {
    console.error('error connecting: ' + err.stack);
    }
    console.log('connected as id ' + connection.threadId);
  });
}
function query(input,callback)
{
  connection.query(input, function (error, results) {
    if (error) throw error;
    callback(results);
  });
}
function insert(input,values,callback)
{
  connection.query(input, values, function (error, results) {
    if (error) throw error;
    callback(results);
  });
}
module.exports.query = query;
module.exports.connect = connect;
module.exports.insert = insert;
module.exports.connection = connection;
