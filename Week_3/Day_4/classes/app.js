var Animal = function(name, noise){
	this.name = name;
	this.noise = noise;
};

var shadow = new Animal("Shadow", "Ruff");
console.log(shadow.name);