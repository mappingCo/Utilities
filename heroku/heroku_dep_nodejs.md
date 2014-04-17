# Deploying a NodeJS/express App to Heroku

### install heroku toolbelt 
(which includes the Heroku command line client, Git, and Foreman.)
$ wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

### login on heroku
$ heroku login

### create a heroku SSH keys:
$ ssh-keygen -t rsa

### add the key to Heroku:
$ heroku keys:add

### create the app
$ mkdir getcont
$ cd getcont

### create package.json
$ subl package.json

```json
{
 "name": "getcont",
 "description": "Basic Express.js/Heroku demo",
 "version": "0.0.1",
 "private": true,
 "engines": {
    "node": "0.10.x"
  },
 "dependencies": {
   "express": "3.x"
  }
}
```
### create node_modules
$ npm install

### Declare process types with a Procfile so that it can run with Foreman:
create a Procfile file and include this line:
* web: node app.js

### create app.js

```javascript
var express = require("express");
var app = express();

// Set up a URL route
app.get("/", function(req, res) {
 res.send("Hello World!");
});

// bind the app to listen for connections on a specified port
var port = process.env.PORT || 3000;
app.listen(port);

// Render some console log output
console.log("Listening on port " + port);
```
### run the app on http://localhost:3000/
$ nodejs app.js

### init a git repo
$ git init
$ git add .
$ git commit -m "Initial commit"

### Create a Heroku app:
$ heroku create

### Deploy the code to Heroku:
$ git push heroku master

### get logs
$ heroku logs

### you can scale web dinos to 2, 3 ...
$ heroku ps:scale web=2

### stop running a process
$ heroku ps:scale worker=0