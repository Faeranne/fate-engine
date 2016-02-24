module.exports = (db) ->
	return db.define 'player',
		username: db.Sequelize.STRING
		games:
			type: Sequelize.ARRAY Sequelize.INTEGER
			references:
				model: db.models.game
				key: 'id'
