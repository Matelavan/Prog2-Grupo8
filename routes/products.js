const express = require('express');
const router = express.Router();
const productController = require('../controllers/productController');

router.get('/', productController.showFormCreate);

router.get('/add', productController.add);
router.post('/add', productController.processProduct);
router.post('/store', productController.store);

router.get('/search', productController.search);
router.post('/search', productController.showProductDetail);
router.get('/id:/id', productController.showUserProfile);


module.exports = router