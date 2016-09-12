/*
Author: Markenson
Based from: http://blog.javascripting.com/2015/01/17/dont-hassle-with-cors/ 

*/
var express = require('express');  
var request = require('request');
var API_SERVER_HOST = process.env.API_SERVER_HOST
var app = express();  
app.use('/', function(req, res) {
	var options = {
		url: API_SERVER_HOST + '/' + req.url,
		headers: {
    		'User-Agent': 'request'
    	}
};

  res.set('Access-Control-Allow-Origin','*')
  req.pipe(request(options)).pipe(res);
});


app.listen(process.env.PORT || 3000);  


