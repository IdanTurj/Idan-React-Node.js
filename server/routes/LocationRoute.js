const express = require('express');
const router = express.Router();
const LocationsController = require('../controllers/LocationController');

router.get('/getLocations', LocationsController.getLocations);
router.get('/getLocation', LocationsController.getLocation);


module.exports = router;