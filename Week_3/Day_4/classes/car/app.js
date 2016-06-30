"use strict";

var fs = require("fs");
var Car = require("./lib/car.js");

fs.readFile("movies.txt", "utf8", function(theError, fileContents){
	console.log("\nFile has been read: Printing it's contents:")
	console.log(fileContents);
});

var bmw = new Car("BMW", "Vrooooom");
bmw.makeNoise();