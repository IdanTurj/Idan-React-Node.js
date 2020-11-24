const express = require('express');
const router = express.Router();
const OwnersController = require('../controllers/OwnerController');

router.get('/getOwners', OwnersController.getOwner);



module.exports = router;