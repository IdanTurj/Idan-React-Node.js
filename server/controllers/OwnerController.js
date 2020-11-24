const Owners = require('../models/OwnersModel');


exports.getOwner = async (req, res, next) => {
    let email = req.query.email;
    let password = req.query.password

    await Owners.findOne({ where: { email: email, password: password } }).then(owners => {
        res.send(owners)
    }).catch(err => {
        res.send("Error")
    })
};