$(document).on('ready',function(){

	var phrases = ['I like Javascript.', 'It is can be used for Front-End and Back-End Development.', 'We are using jQuery library.'];

	var rand = phrases[Math.floor(Math.random() * phrases.length)];

	$('.phrase').append('<p>'+ rand +'</p>');

});

