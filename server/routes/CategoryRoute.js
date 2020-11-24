const express = require('express');
const router = express.Router();
const CategoriesController = require('../controllers/CategoryController');

router.get('/getCategories', CategoriesController.getCategories);
router.get('/getCategory', CategoriesController.getCategory);


module.exports = router;