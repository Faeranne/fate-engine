try{
	require('source-map-support/register')
}catch (e){
	console.log('No source map support.')
}

require('./build')
