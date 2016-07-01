"use strict";

class Question{
	constructor(question, answer, id, points){
		this.question = question;
		this.answer = answer;
		this.id = id;
		this.points = points;
	}
}

module.exports = Question;