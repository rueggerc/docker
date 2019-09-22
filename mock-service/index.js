"use strict";

const express = require("express");
const bodyParser = require("body-parser");
const controller = require("./controller");

// Setup
let app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.use(bodyParser.text());
app.use(bodyParser.json({type: 'application/json'}));

// Set Sensor Data
app.route("/sensor/:type/:sensorId/:temp/:humidity/readings")
  .post(controller.setReadings);


// Get Sensor Data
app.route("/sensor/:type/:sensorId/readings")
  .get(controller.getReadings);


// Listen
let server = app.listen(3000, () => {
    console.log("Mock Services Server Running on Port 3000");
});

