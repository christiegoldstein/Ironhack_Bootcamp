$(document).on('ready',function(){

	var phrases = ['I like Javascript.', 'It is can be used for Front-End and Back-End Development.', 'We are using jQuery library.'];

	var rand = phrases[Math.floor(Math.random() * phrases.length)];

	$('.phrase').append('<p>'+ rand +'</p>');

	$('.change').on('click',function(){
		$ ('.phrase').html('<p>'+ phrases[Math.floor(Math.random() * phrases.length)] +'</p>');
	});

	// $("input").keypress(function(event) {
	//     if (event.which == 13) {
	//     	phrases.push($('input').val());
	//         console.log(phrases);

	//         //event.preventDefault();
	//        // $("form").submit();
	//     }
	// });

	$("form").submit(function() {
		phrases.push($('input').val());
	    console.log(phrases); 
		return false; 
	});

});

