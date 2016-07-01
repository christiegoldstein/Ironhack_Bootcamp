"use strict";

var read = require("read");
var Question = require("./lib/question.js");
var Quiz = require("./lib/quiz.js");

var friends_quiz = new Quiz();

console.log("Welcome to Friend's Trivia Quiz! Let's see how well you know the show!");

var question1 = new Question("What soap opera did Joey act in?", "Days of Our Lives", 1, 10);
friends_quiz.add_question(question1);
var question2 = new Question("What was the name of the song Phoebe sang?", "Smelly Cat", 2, 10);
friends_quiz.add_question(question2);
var question3 = new Question("What was Rachel's almost husband-to-be's name?", "Barry", 3, 10);
friends_quiz.add_question(question3);
var question4 = new Question("Which band sings the iconic theme song?", "The Remebrandts", 4, 10);
friends_quiz.add_question(question4);
var question5 = new Question("What's Monica's apartment number?", "20", 5, 10);
friends_quiz.add_question(question5);
var question6 = new Question("What was the name of Joey's reclining chair?", "Rosita", 6, 10);
friends_quiz.add_question(question6);
var question7 = new Question("What name did Phoebe use when pretending to be someone else?", "Regina Phalange", 7, 10);
friends_quiz.add_question(question7);
var question8 = new Question("How many times was Ross married?", "3", 8, 10);
friends_quiz.add_question(question8);
var question9 = new Question("What did Rachel name her daughter?", "Emma", 9, 10);
friends_quiz.add_question(question9);
var question10 = new Question("Who did Phoebe mug on the streets?", "Ross", 10, 10);
friends_quiz.add_question(question10);

friends_quiz.take_quiz();
