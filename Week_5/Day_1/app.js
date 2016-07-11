$(document).on('ready',function(){

	$('.js-button').on('click',function(){
		$ ('.to_fade').fadeOut();
	});

	$('.unicorn-button').on('click',function(){
		$ ('.to_fade').append('<p>And I like Unicorns!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>');
		$ ('body').addClass('rainbow');
	});

});