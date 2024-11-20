const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController')

/* GET home page. */
router.get('/', userController.register)


module.exports = router;