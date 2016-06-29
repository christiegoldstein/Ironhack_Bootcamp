var colorsArray = ["black", "purple", "black", "chartreuse", "indigo", "magenta", "scarlet", "indigo", "indigo",];

function countColors (color, the_array){

	var colorOccurances = 0;

	for(var counter = 0; counter < the_array.length; counter++){
		var theColor = the_array[counter]

		if(theColor == color){
			colorOccurances++;
		}
	}

	return colorOccurances;  
}

console.log("testing colors function")

console.log(countColors("indigo", colorsArray) === 3);

console.log(countColors("scarlet", colorsArray) === 1);

console.log(countColors("pink", colorsArray) === 0);