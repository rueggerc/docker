"use strict";


// Set Readings
module.exports.setReadings = function(request,response) {
    console.log("Set Readings: " + JSON.stringify(request.params,null,2));
    response.status(204).send({});
}

// Get Readings
module.exports.getReadings = function(request,response) {
    console.log("Get Readings params: " + JSON.stringify(request.params,null,2));
    console.log("Get Readings query: " + JSON.stringify(request.query,null,2));
    response.status(200).send("getReadings: 87.11,97.64");
}


function getCurrentDateUTC() {
    let currentDate = 
      new Date().toISOString().
        replace(/T/,' ').
        replace(/\..+/,'');
    return currentDate;
}


