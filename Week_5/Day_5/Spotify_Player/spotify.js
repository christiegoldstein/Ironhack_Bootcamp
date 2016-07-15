$(document).on("ready", function(){

	$(".js-tracks-form").on("submit", function(event){
		event.preventDefault();

		var track = $(".js-tracks-input").val();

		getTrack(track);
	});

	function getTrack(track){
		$.ajax({
			//https://api.spotify.com/v1/search?type=track&limit=1&q=${track}
			url: `https://api.spotify.com/v1/search?type=track&q=${track}`,
			success: function(response){

				console.log(response);
				//song name

				$(".title").text(response.tracks.items[0].name);

				//artist name

				var artist_name = response.tracks.items[0].artists[0].name;
				$(".author").html(`<a href="#" class="artist-link">${artist_name}</a>`);

				//album image
				$(".cover").html(`<img src=${response.tracks.items[0].album.images[1].url}>`);

				//song audio
				var original_song = $("audio").attr("src");
				//console.log(original_song);
				var new_song = response.tracks.items[0].preview_url;
				//console.log(new_song);
				$("audio").attr("src", new_song);

				$(".btn-play").on("click", function(){
					if($(".btn-play").hasClass("disabled")){
						$(".btn-play").removeClass("disabled");
						$(".btn-play").addClass("playing");
						$(".js-player").trigger("play");
						// Have printTime be called when the time is updated
						$('.js-player').on('timeupdate', printTime);
					}
					else if($(".btn-play").hasClass("playing")){
						$(".btn-play").removeClass("playing");
						$(".btn-play").addClass("disabled");
						$(".js-player").trigger("pause");
					}
				});

				$(".artist-link").on("click",function(event){
					event.preventDefault();
					// $(".js-more-tracks-modal").modal("hide");
					$(".js-artist-modal").modal("show");
					var link = `https://api.spotify.com/v1/search?type=artist&query=${artist_name}`;
						$.ajax({
							type: "GET",
							url: link,
							success: artistInfo

						});
				});
			}
		});
	}


	$(".js-more-results").on("click", function(event){
		event.preventDefault();
		var track = $(event.currentTarget).attr("data");
		$.ajax({
			//https://api.spotify.com/v1/search?type=track&limit=1&q=${track}
			url: `https://api.spotify.com/v1/search?type=track&q=${track}`,
			success: function(response){
				// $(".js-artist-modal").modal("hide");
				$(".js-more-tracks-modal").modal("show");
				for(var i = 0; i < response.tracks.items.length; i++){
					more_search_results(response.tracks.items[i]);
				}
				//$(".js-more-tracks-modal").modal("show");

				$(".js-track-from-list").on("click", function(event){
					event.preventDefault();

					var track = $(event.currentTarget).attr("data");

					getTrack(track);
					$(".js-track-list").empty();
				});
			}
		});
	});
	

	// Define a function to print the player's current time
	function printTime(){
	  var current = $('.js-player').prop('currentTime');
	  $("progress").attr("value", current);
	  //console.log($("progress").attr("value"));
	  //console.debug('Current time: ' + current);
	}

	function artistInfo(response){
		$(".js-genres").empty();
		//console.log(response);
		//name
		$(".js-name").text(response.artists.items[0].name);
		//photo
		$(".js-photo").html(`<img src=${response.artists.items[0].images[1].url} class="artist-img">`);
		//genres
		var genres_arr = response.artists.items[0].genres;
		for(var i = 0; i < genres_arr.length; i++){
			if(i === genres_arr.length - 1){
				$(".js-genres").append(response.artists.items[0].genres[i]);
			}
			else{

				$(".js-genres").append(response.artists.items[0].genres[i] + ", ");
			}
		}
		//followers
		$(".js-followers").text(response.artists.items[0].followers.total);
		//popularity
		$(".js-popularity").text(response.artists.items[0].popularity);

	}

	function more_search_results(response){
		//console.log(response.name);
		$(".js-track-list").append(`
			<li><a href="#" data=${response.name} class="js-track-from-list">${response.name}</a></li>
			<p>Artist: ${response.artists[0].name}</p>
			<p>Album: ${response.album.name}</p>
		`);
	}

});
