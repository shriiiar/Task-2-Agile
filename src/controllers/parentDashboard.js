"use strict";

const winston = require("winston");
const db = require("../database");
const user = require("../user");
const helpers = require('../controllers/helpers');
const groups = require('../groups');
const privileges = require('../privileges');

const parentDashboardController = module.exports;

parentDashboardController.get = async function (req, res, next) {
	const parentDashboard = {};
	parentDashboard.title = 'Parent Dashboard';
	res.render('sdlms/dtthon/applicant/parentDashboard', parentDashboard);
};