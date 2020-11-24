const express = require('express');
const router = express.Router();
const PendingController = require('../controllers/PendingController');


router.get('/getPendings', PendingController.getPending);
router.get('/InsertPending', PendingController.InsertPending);
router.get('/FindPenidngId', PendingController.getPendingByID);
router.get('/deletePenidngId', PendingController.DeletePending);


module.exports = router;