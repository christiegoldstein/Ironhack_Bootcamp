$(document).on('ready',function(){

	var phrases = ['I like Javascript.', 'It is can be used for Front-End and Back-End Development.', 'We are using jQuery library.'];

	var rand = phrases[Math.floor(Math.random() * phrases.length)];

	$('.phrase').append('<p>'+ rand +'</p>');

	$('.change').on('click',function(){
		$ ('.phrase').html('<p>'+ phrases[Math.floor(Math.random() * phrases.length)] +'</p>');
	});

	$('form').submit(function() {
		phrases.push($('input').val());
	    console.log(phrases); 
		return false; 
	});

	$('a').on('click',function(){
		if($('ol').hasClass('hide')){
			$('ol').hide();
			$('ol').removeClass('hide');
		}
		else{
			for(var i = 0; i < phrases.length; i++){
				$('ol').append('<li>'+phrases[i]+'</li>');
				$('ol').append('<button>X</button>');
			}
			$('ol').addClass('hide');
		}

		return false;

	});

});

