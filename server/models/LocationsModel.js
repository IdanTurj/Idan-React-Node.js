const Sequelize = require('sequelize');
const sequelize = require('../utils/database');

const Location = sequelize.define('locations', {
    id: {
        type: Sequelize.INTEGER(11),
        autoIncrement: true,
        allowNull: false,
        primaryKey: true
    },
    location: {
        type: Sequelize.STRING(256),
        allowNull: false
    },
})

module.exports = Location