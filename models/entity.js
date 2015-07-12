//TODO: Make proper inline documentation

var model = require('model');

var Entity = function(){
	this.property('name', 'string', {required: true});
	this.property('description', 'text');
	this.property('aspects', 'object');
	this.property('skills', 'object');
	this.property('stunts', 'object');
	this.property('consequences', 'object');
	this.property('stress', 'object');

	this.validatesWithFunction('skills', function(skills){
		//validate that the skills follow Fate rules.  Each level needs as many or more skills below it. Example: with 3 +2 skills, you must have atleast 3 +1 skills
		return true;
	});
	
	this.validatesLength('stress', {min:2, max:4});

}

console.log('Registering Entity Model')

Entity = model.register('Entity', Entity)

module.exports = Entity
