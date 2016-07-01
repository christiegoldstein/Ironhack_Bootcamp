"use strict";
var read = require("read");

class Quiz{
	constructor(){
		this.quiz_arr = [];
		this.i = 0;
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
		if(error){
			console.log(error.message);
		}
		else if(this.quiz_arr[this.i].answer === input){
			console.log("Correct!");
			this.i++;
			this.take_quiz();
		}		
		else if(this.quiz_arr[this.i].answer !== input){
			console.log("Incorrect! Please try again!");
			this.take_quiz();
		}
	}
}

module.exports = Quiz;















