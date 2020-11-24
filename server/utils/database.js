const Sequelize = require('sequelize');

const sequelize = new Sequelize('lawyerapp', 'root', '', {
    host: "localhost",
    dialect: 'mysql'
});

module.exports = sequelize;