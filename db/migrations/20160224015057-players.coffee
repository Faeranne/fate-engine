'use strict'
module.exports =
  up: (queryInterface, Sequelize) ->
    return queryInterface.createTable 'players',
      id:
        type: Sequelize.INTEGER
        primaryKey: true
      username: Sequelize.STRING
      games: Sequelize.ARRAY(Sequelize.INTEGER)
  down: (queryInterface, Sequelize) ->
    return queryInterface.dropTabel 'players'
