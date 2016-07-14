// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

PokemonApp.Pokemon = class {
	constructor (pokemonUri){
		this.id = PokemonApp.idFromUri(pokemonUri);
	}

	render(){
		console.log("Rendering pokemon: #" + this.id);

		$.ajax({
			url: "/api/pokemon/" + this.id,
			success: function(response){
				console.log("Pokemon info:");
				console.log(response);

				var header = `
					<span>${response.name}</span>
        		  	<small>#${response.pkdx_id}</small>
				`;
				$(".modal-title").html(header);
				$(".js-height").text(response.height);
				$(".js-weight").text(response.weight);
				$(".js-attack").text(response.attack);
				$(".js-defense").text(response.defense);
				$(".js-hp").text(response.hp);
				$(".js-speed").text(response.speed);
				$(".js-atk").text(response.sp_atk);
				$(".js-def").text(response.sp_def);
				type(response);
				$(".js-pokemon-modal").modal("show");
			}
		});

		function type(response){
			$(".js-type").empty();
			for(var i = 0; i < response.types.length; i ++){
				if(response.types[i].name != undefined){
					//console.log(response.types[i].name);
					$(".js-type").append(response.types[i].name);
				}
			}
		}
	}
}

PokemonApp.idFromUri = function(pokemonUri){
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
}

$(document).on("ready", function(){
	$(".js-show-pokemon").on("click", function(event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");
		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

