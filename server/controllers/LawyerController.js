const Lawyers = require('../models/LawyersModel');

// const response = require('../utils/returnToClient')

exports.getLawyers = async (req, res, next) => {
    let id = req.query.id
    await Lawyers.findAll().then(lawyers => {
        res.send(lawyers)
    }).catch(err => {
        res.send("Error")
    })
};

exports.getLawyer = async (req, res, next) => {
    let id = req.query.id

    await Lawyers.findAll({ where: { category_id: id } }).then(lawyers => {
        res.send(lawyers)
    }).catch(err => {
        res.send("Error")
    })
};

exports.findLawyer = async (req, res, next) => {
    let id = req.query.id;

    await Lawyers.findAll({ where: { id: id } }).then(onelawyer => {
        res.send(onelawyer)
    }).catch(err => {
        res.send("Error")
    })
}

exports.insertLawyer = async (req, res, next) => {
    let objLawyer = {
        name: req.query.name,
        lastname: req.query.lastname,
        phone: req.query.phone,
        cc: req.query.cc,
        ccs: req.query.ccs,
        education: req.query.education,
        image: req.query.image,
        company: req.query.company,
        location_id: req.query.location_id,
        category_id: req.query.category_id,
        category: req.query.category,
        location: req.query.location
    }

    await Lawyers.create(objLawyer).then(insert => {
        res.send(insert)
    }).catch(err => {
        res.send("Error")
    })
};


