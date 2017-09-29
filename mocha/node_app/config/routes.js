var express = require('express');
var router = express.Router();

var appController = require('../controllers/app_controller')
router.route('/')
    .get(appController.helloWorld)

var personalController = require('../controllers/personalController')
router.route('/joe')
    .get(personalController.joe)

module.exports = router 