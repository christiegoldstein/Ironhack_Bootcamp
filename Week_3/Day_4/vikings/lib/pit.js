"use strict";

class Pit{
	constructor(){
		this.vikings_arr = [];
	}

	add(viking){
		this.vikings_arr.push(viking);
	}

	fight(){
		console.log("While in the Pit...");
		var fights = 0;
		for(var i = 0 ; i < this.vikings_arr.length; i += 2){
			var viking1 = this.vikings_arr[i];
			var viking2 = this.vikings_arr[i+1];


			while(fights < 3){
				if(viking1.strength > viking2.strength){
					viking2.health -= 15;

					if(viking2.health <= 20){
						break;
					}
				}
				else if(viking1.strength < viking2.strength){
					viking1.health -= 15;

					if(viking1.health <= 20){
						break;
					}
				}
			}
			console.log("Viking 1 Health: "+viking1.health+" Viking 2 Health: "+viking2.health);

		}
	}
}


module.exports = Pit;