//checking to see if object was created in browser
if(window.PokemonApp === undefined){
	//if it's not them make one that is empty
	window.PokemonApp = {};
}

//having 1 gobal object to share between files
//must have specific name to not override anything
PokemonApp.init = function(){
	//3rd party setup code here
	console.log("Pokemon App ONLINE!");
}

$(document).on("ready", function(){
	PokemonApp.init();
});