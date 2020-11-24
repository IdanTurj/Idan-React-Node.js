const Sequelize = require('sequelize');
const sequelize = require('../utils/database');

const Category = sequelize.define('category', {
    id: {
        type: Sequelize.INTEGER(11),
        autoIncrement: true,
        allowNull: false,
        primaryKey: true
    },
    category: {
        type: Sequelize.STRING(256),
        allowNull: false
    },
})

module.exports = Category