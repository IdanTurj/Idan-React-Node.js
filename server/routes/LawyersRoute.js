const express = require('express');
const router = express.Router();
const LawyersController = require('../controllers/LawyerController');

router.get('/getLawyers', LawyersController.getLawyers);
router.get('/getLaw', LawyersController.getLawyer);
router.get('/instLaw', LawyersController.insertLawyer);
router.get('/findLawyer', LawyersController.findLawyer)


module.exports = router;