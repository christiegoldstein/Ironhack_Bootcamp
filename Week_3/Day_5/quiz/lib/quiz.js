"use strict";
var read = require("read");

class Quiz{
	constructor(){
		this.quiz_arr = [];
		this.i = 0;
		this.total = 0;
	}

	add_question(question){
		this.quiz_arr.push(question);
	}

	take_quiz(){
		var options={
			prompt: "Question "+this.quiz_arr[this.i].id+": "+this.quiz_arr[this.i].question
		}
		read(options, this.callBack.bind(this));
	}

	callBack(error, input){
		var randomnumber = Math.floor(Math.random()*this.quiz_arr.length);

		if(error){
			console.log(error.message);
		}
		else if(this.i === this.quiz_arr.length){
			console.log("Score: "+this.total+" Points Earned");
		}
		else if(this.quiz_arr[this.i].answer === input){
			console.log("Correct!");
			// console.log(this.quiz_arr[this.i].points);
			this.i++;
			if(this.quiz_arr[this.i].id === randomnumber){
				this.total+= 20;
				console.log("You got the bonus!");
				console.log(this.total);
			}
			else if(this.quiz_arr[this.i].id !== randomnumber){
				this.total += this.quiz_arr[this.i].points;
				console.log(this.total);
			}
			this.take_quiz();
		}		
		else if(this.quiz_arr[this.i].answer !== input){
			console.log("Incorrect! Please try again!");
			this.total -= this.quiz_arr[this.i].points;
			this.take_quiz();
		}
	}
}

module.exports = Quiz;















