function averageColon(string){
	if(string === null){
		return 0;
	}
	else{
		var new_arr = string.split(/[:\s&]+/);
		console.log(new_arr);
		var sum = 0;
		var average = 0;

		for(var i = 0; i < new_arr.length; i ++){
			sum = sum + parseInt(new_arr[i]);
		}

		average = sum / new_arr.length;

		return average;
	}
}






var numbers = "80:70:90:100";
console.log( averageColon(numbers) === 85 );
console.log( averageColon("80&70&90&100") === 85 );
console.log( averageColon("80:70&90&100") === 85 );
console.log( averageColon() === 0 );
