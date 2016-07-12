$(document).on('ready',function(){

	$(".js-artist-form").on("submit", function(event){
		event.preventDefault();

		var artist_name = $(".name").val();

		var link = 'https://api.spotify.com/v1/search?type=artist&query='+artist_name;

		$.ajax({
			url: link,
			success: function(response){
				showArtist(response)

			}

		});
		
	});

	function showArtist(artist){
		for(var i = 0; i < artist.artists.items.length; i++){
			$(".artist_info").append(artist.artists.items[i].name)
			if(artist.artists.items[i].images[0] != null){
				$(".artist_info").append('<img src='+artist.artists.items[i].images[0].url+'><br/>');
			}
		}
		//$(".container").append(artist.artists.images[0]);

		//console.log(artist);

	}
});