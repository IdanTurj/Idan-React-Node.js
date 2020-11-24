const Pendings = require('../models/PendingsModel');


exports.getPending = async (req, res, next) => {

    await Pendings.findAll().then(pending => {
        res.send(pending)
    }).catch(err => {
        res.send("Error")
    })
};


exports.getPendingByID = async (req, res, next) => {
    let id = req.query.id
    await Pendings.findOne({ where: { id: id } }).then(pending => {
        res.send(pending)
    }).catch(err => {
        res.send("Error")
    })
};


exports.DeletePending = async (req, res, next) => {
    let id = req.query.id
    await Pendings.destroy({ where: { id: id } }).then(deletePend => {
        res.send(deletePend)
    }).catch(err => {
        res.send("Error")
    })
};


exports.InsertPending = async (req, res, next) => {

    let pendingObj = {
        name: req.query.name,
        lastname: req.query.lastname,
        phone: req.query.phone,
        cc: req.query.cc,
        ccs: req.query.ccs,
        education: req.query.education,
        company: req.query.company,
        category_id: req.query.category_id,
        location_id: req.query.location_id,
        image: req.query.image,
        category: req.query.category,
        location: req.query.location,

    }


    await Pendings.create(pendingObj).then(insert => {
        res.send(insert)
    }).catch(err => {
        res.send("Error")
    });

};