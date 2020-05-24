const http=require('http');

http.createServer(function(req,resp){
	resp.write('HOLA MUNDO_ DEVOPS TRANING COURSE');
resp.end();
}).listen(8080);
console.log('Server running');


