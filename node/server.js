var app = require('express')();
var http = require('http').Server(app);
var mysql     =     require("mysql");
var io = require('socket.io')(http);

/* Creating POOL MySQL connection.*/

var pool    =    mysql.createPool({
      connectionLimit   :   100,
      host              :   'localhost',
      user              :   'root',
      password          :   'admin@1234',
      database          :   'react_db',
      debug             :   false
});


io.on('connection', function(socket){
  setInterval(function(){
  pool.getConnection(function(err,connection){
      if (err) { return false; }
  connection.query("SELECT s_text FROM fbstatus where status = '1'",function(err,rows){
      if(rows[0]!=''){
          io.emit('eventMsg', rows[0]);
          connection.release();
      }
   });
   connection.on('error', function(err) {
         return;
      });
   });
  socket.on('disconnect',function(){
   		console.log('a user dissconnected');	
  });
  },10000);  
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});

