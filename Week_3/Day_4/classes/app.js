function Animal(name, noise){
	this.name = name;
	this.noise = noise;

};


Animal.prototype.shout: funtion(){
		console.log("Moooo!");
};

var shadow = new Animal("Shadow", "Ruff");
console.log(shadow.name);