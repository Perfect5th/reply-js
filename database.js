var Db = require('mongodb').Db,
  Server = require('mongodb').Server,
  Connection = require('mongodb').Connection;

// Connection information
var host = 'localhost';
var port = 27017;
var db = new Db('reply-js', new Server(host, port, {}), {native_parser:false});

db.open(function(err, db) {
  if(err) throw err;

  console.log("CONNECTION SUCCESS!");
  db.close();
});
