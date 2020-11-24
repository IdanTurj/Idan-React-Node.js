const Categories = require('../models/CategoriesModel');
const Lawyers = require('../models/LawyersModel')

// const response = require('../utils/returnToClient')

exports.getCategories = async (req, res, next) => {
    await Categories.findAll().then(categories => {
        res.send(categories)
    }).catch(err => {
        res.send("Error")
    })
};

exports.getCategory = async (req, res, next) => {
    let id = req.query.id

    await Categories.findOne({ where: { id: id } }).then(categories => {
        res.send(categories)
    }).catch(err => {
        res.send("Error")
    })
};


