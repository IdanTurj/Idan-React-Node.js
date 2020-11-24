const Sequelize = require('sequelize');
const sequelize = require('../utils/database');

const Lawyer = sequelize.define('lawyers', {
    id: {
        type: Sequelize.INTEGER(11),
        autoIncrement: true,
        allowNull: false,
        primaryKey: true
    },
    name: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    lastname: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    phone: {
        type: Sequelize.INTEGER(11),
        allowNull: true
    },
    cc: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    ccs: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    education: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    image: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    company: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    location_id: {
        type: Sequelize.INTEGER(11),
        allowNull: true
    },
    category_id: {
        type: Sequelize.INTEGER(11),
        allowNull: true
    },
    category: {
        type: Sequelize.STRING(256),
        allowNull: true
    },
    location: {
        type: Sequelize.STRING(256),
        allowNull: true
    },

})

module.exports = Lawyer