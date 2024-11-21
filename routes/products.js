const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

router.get('/products', productController.showFormCreate);
router.post('/products', productController.store)

module.exports = router