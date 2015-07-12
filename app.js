express = require('express');
nano = require('nano')('http://couchdb:5984');

console.log('Loading modules');
models = require('./models');
console.log('Modules loaded');
app = express();

app.set('port', process.env.PORT || 8080);

console.log('Starting API server on '+app.get('port'));
app.listen(app.get('port'));

