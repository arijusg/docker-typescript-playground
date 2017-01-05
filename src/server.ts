import * as express from "express";

var app = express();

app.get('/', (req, res) => {
    res.send('Hello you');
});



let server = app.listen(8080, function() {
    console.log("Demo Express server listening on port %d", 
    server.address().port);
});

export var App = app;