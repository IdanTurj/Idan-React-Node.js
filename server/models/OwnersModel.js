const Sequelize = require('sequelize');
const sequelize = require('../utils/database');

const Owners = sequelize.define('owners', {
    id: {
        type: Sequelize.INTEGER(11),
        autoIncrement: true,
        allowNull: false,
        primaryKey: true
    },
    name: {
        type: Sequelize.STRING(256),
        allowNull: false
    },
    email: {
        type: Sequelize.STRING(256),
        allowNull: false
    },
    password: {
        type: Sequelize.STRING(256),
        allowNull: false
    },
})

module.exports = Owners