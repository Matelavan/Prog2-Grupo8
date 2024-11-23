const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController')

/* GET home page. */
router.get('/register', userController.register)
router.post('/register', userController.registerPost)
router.get('/login',userController.login)
router.post('/login', userController.loginPost)

module.exports = router;