"use strict";

var Viking = require("./lib/vikings.js");
var Saxon = require("./lib/saxon.js");
var Pit = require("./lib/pit.js");
var War = require("./lib/war.js");

var Pit = new Pit ();
var War = new War ();

var Orr = new Viking("Orr", 100, 100);
Pit.add(Orr);
War.add_viking(Orr);

var Astrid = new Viking("Astrid", 80, 70);
Pit.add(Astrid);
War.add_viking(Astrid);

var Hilde = new Viking("Hilde", 60, 50);
Pit.add(Hilde);
War.add_viking(Hilde);

var Gudrun = new Viking("Gudrun", 90, 110);
Pit.add(Gudrun);
War.add_viking(Gudrun);

Pit.fight();

var Saxon1 = new Saxon(50, 60);
War.add_saxon(Saxon1);

var Saxon2 = new Saxon(45, 50);
War.add_saxon(Saxon2);

var Saxon3 = new Saxon(30, 40);
War.add_saxon(Saxon3);

var Saxon4 = new Saxon(35, 45);
War.add_saxon(Saxon4);

War.go_to_war();