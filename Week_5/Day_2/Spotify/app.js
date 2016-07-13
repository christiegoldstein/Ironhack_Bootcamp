$(document).on('ready',function(){

	$(".js-artist-form").on("submit", function(event){
		event.preventDefault();

		var artist_name = $(".name").val();

		var link = 'https://api.spotify.com/v1/search?type=artist&query='+artist_name;

		$.ajax({
			type: "GET",
			url: link,
			success: showArtist

		});
		
	});

	function showArtist(artist){
		//artist.artists.items.length
		$(".artist_info").empty();
		for(var i = 0; i < 1; i++){
			$(".artist_info").append("<h3>"+artist.artists.items[i].name+"</h3>");
			$(".artist_info").append(`<a href='#' data=${artist.artists.items[i].id}>Click here to see albums</a>`);
			if(artist.artists.items[i].images[0] != null){
				$(".artist_info").append('<img src='+artist.artists.items[i].images[1].url+'>');
			}
		}

		$("a").on("click", function(event){
			event.preventDefault();
		    $(".modal").modal("show");

			var id = artist.artists.items[0].id;

			console.log(id);

			var album_link = 'https://api.spotify.com/v1/artists/'+id+'/albums';

			 $.ajax({
			 	type: "GET",
			 	url: album_link,
			 	success: showAlbum
			 });
		});

	}

	function showAlbum(albums){
		$(".modal-body").empty();
		for(var i = 0; i < albums.items.length; i++){
			if(albums.items[i].name != null && albums.items[i].images[1].url != null){
				var album_name = albums.items[i].name;
				var album_img = albums.items[i].images[1].url;
				console.log(album_name);
				console.log(album_img);
				var album_list = `
					<ul>
						<li>	
							<h4>${album_name}</h4>
							<img src=${album_img}>
						</li>
					</ul>
				`;
				$(".modal-body").append(album_list);
			}	
		}

	}
});