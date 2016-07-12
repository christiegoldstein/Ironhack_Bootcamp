$(document).on('ready',function(){
	$('form').hide();
	$('.list-button').on('click',function(event){
		event.preventDefault();

		$.ajax({
			url: 'https://ironhack-characters.herokuapp.com/characters',
			success: showCharacters
		});

		$('.list-button').hide();
		$('form').show();
		form();
	});

	function showCharacters(charactersArray){
          charactersArray.forEach(function(theCharacter){
            var html = '<p>' + theCharacter.name + '</p>';
            $('ul').append(html);
  		  });
  	}

  	function form(){
		$(".js-character-form").on("submit", function(event){
		 	event.preventDefault();
		 	var new_char_arr = [ {
		 		name: $('.name').val(),
		 		occupation: $('.occupation').val(),
		 		weapon: $('.weapon').val()
		 	}];

			showCharacters(new_char_arr);
		 });
	}

	// $('.js-button').on('click',function(){
	// 	$ ('.to_fade').fadeOut();
	// });

	// $('.unicorn-button').on('click',function(){
	// 	$ ('.to_fade').append('<p>And I like Unicorns!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</p>');
	// 	$ ('body').addClass('rainbow');
	// });

});