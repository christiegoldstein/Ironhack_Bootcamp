"use strict";

class War{
	constructor(){
		this.viking_arr = [];
		this.saxon_arr = [];
	}

	add_viking(viking){
		this.viking_arr.push(viking);
	}

	add_saxon(saxon){
		this.saxon_arr.push(saxon);
	}

	go_to_war(){
		console.log(" ");
		console.log("Chhaaaarrrrggggggeeeeee!!!! We're Going To War!");

		var fights = 0;
		var viking_deaths = 0;
		var saxon_deaths = 0;


		while(fights < 8){
			var viking = this.viking_arr[Math.floor(Math.random() * this.viking_arr.length)];
			var saxon = this.saxon_arr[Math.floor(Math.random() * this.saxon_arr.length)];

			if(viking.strength > saxon.strength){
				saxon.health -= 15;

				if(saxon.health <= 0){
					saxon_deaths++;
				}
			}

			else if(viking.strength < saxon.strength){
				viking.health -= 15;

				if(viking.health <= 0){
					viking_deaths++;
				}
			}

			fights++;
		}

		var casualties_viking = (viking_deaths / this.viking_arr.length) * 100;
		var casualties_saxon = (saxon_deaths / this.saxon_arr.length) * 100;


		console.log("Viking Deaths: " + casualties_viking +"%");
		console.log("Saxon Deaths: " +casualties_saxon +"%");

		if(casualties_viking > casualties_saxon){
			console.log("Saxons Win!");
		}
		else if(casualties_viking < casualties_saxon){
			console.log("Vikings Win!");
		}
		
	}
}

module.exports = War;