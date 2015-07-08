express = require('express');
nano = require('nano')('http://couchdb:5984');
app = express();

app.set('port', process.env.PORT || 8080);

app.listen(app.get('port'));
console.log('Listening on '+app.get('port'));
