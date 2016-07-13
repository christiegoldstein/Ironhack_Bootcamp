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
		$(".artist_info").empty();
		for(var i = 0; i < artist.artists.items.length; i++){
			$(".artist_info").append("<h3>"+artist.artists.items[i].name+"</h3>");
			var id = artist.artists.items[i].id;
			//console.log(id);
			$(".artist_info").append(`<a href='#' data=${id} class='album_link'>Click here to see albums</a>`);
			//console.log($("a").attr("data"));
			if(artist.artists.items[i].images[0] != null){
				$(".artist_info").append('<img src='+artist.artists.items[i].images[1].url+'>');
			}
		}

		$(".album_link").on("click", function(event){
			//console.log($("a").attr("data"));
			event.preventDefault();

		    $(".albums_modal").modal("show");

			var id = $(event.currentTarget).attr("data");

			var album_link = 'https://api.spotify.com/v1/artists/'+id+'/albums';

			 $.ajax({
			 	type: "GET",
			 	url: album_link,
			 	success: showAlbum
			 });
		});

	}

	function showAlbum(albums){
		$(".body_album").empty();
		for(var i = 0; i < albums.items.length; i++){
			if(albums.items[i].name != null && albums.items[i].images[1].url != null){
				var album_name = albums.items[i].name;
				var album_img = albums.items[i].images[1].url;
				var album_id = albums.items[i].id;
				//console.log(album_name);
				//console.log(album_img);
				var album_list = `
					<ul>
						<li>	
							<h4><a href='#' data=${album_id} class='track_link'>${album_name}<a></h4>
							<img src=${album_img}>
						</li>
					</ul>
				`;
				$(".body_album").append(album_list);
			}	
		}

		$(".track_link").on("click", function(event){
			//console.log($("a").attr("data"));
			event.preventDefault();
			$(".albums_modal").modal("hide");
		    $(".tracks_modal").modal("show");

			var id = $(event.currentTarget).attr("data");

			var track_link = 'https://api.spotify.com/v1/albums/'+id+'/tracks';

			 $.ajax({
			 	type: "GET",
			 	url: track_link,
			 	success: showTrack
			 });
		});

	}

	function showTrack(tracks){
		$(".body_track").empty();
		for(var i = 0; i < tracks.items.length; i++){
			if(tracks.items[i].name != null){
				var track_name = tracks.items[i].name;
				console.log(track_name);
				var track_preview = tracks.items[i].preview_url;
				var track_list = `
					<ul>
						<li>	
							<h4><a href=${track_preview} target='_blank'>${track_name}</h4>
						</li>
					</ul>
				`;
				$(".body_track").append(track_list);
			}	
		}

	}
});