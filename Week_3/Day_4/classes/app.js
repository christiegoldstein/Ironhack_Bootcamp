
// //clean and newer way of creating a class in JS
// class Animal{
// 	constructor(name, noise){
// 		this.name = name;
// 		this.noise = noise;
// 	}

// 	shout(){
// 		console.log("Moooo!");
// 	}
// }

// //old way of creating classes
// function Animal(name, noise){
// 	this.name = name;
// 	this.noise = noise;

// };


// Animal.prototype.shout: funtion(){
// 		console.log("Moooo!");
// };

var shadow = new Animal("Shadow", "Ruff");
console.log(shadow.name);