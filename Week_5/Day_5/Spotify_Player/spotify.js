$(document).on("ready", function(){

	$(".js-tracks-form").on("submit", function(event){
		event.preventDefault();

		var track = $(".js-tracks-input").val();

		//console.log(track);
		$.ajax({
			url: `https://api.spotify.com/v1/search?type=track&limit=1&q=${track}`,
			success: function(response){
				//song name

				$(".title").text(response.tracks.items[0].name);

				//artist name
				$(".author").text(response.tracks.items[0].artists[0].name);

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
					}
					else if($(".btn-play").hasClass("playing")){
						$(".btn-play").removeClass("playing");
						$(".btn-play").addClass("disabled");
						$(".js-player").trigger("pause");
					}
				});
			}
		});
	});

});