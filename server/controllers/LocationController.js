const Locations = require('../models/LocationsModel');

// const response = require('../utils/returnToClient')

exports.getLocations = async (req, res, next) => {
    await Locations.findAll().then(locations => {
        res.send(locations)
    }).catch(err => {
        res.send("Error")
    })
};

exports.getLocation = async (req, res, next) => {
    let id = req.query.id

    await Locations.findOne({ where: { id: id } }).then(locations => {
        res.send(locations)
    }).catch(err => {
        res.send("Error")
    })
};


