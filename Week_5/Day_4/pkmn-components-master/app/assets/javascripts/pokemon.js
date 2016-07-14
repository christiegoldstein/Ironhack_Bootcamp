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
				//console.log("Pokemon info:");
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
				description(response);
				$(".js-pokemon-modal").modal("show");

				$(".see-move").on("click", function(event){
					event.preventDefault();
					$(".js-pokemon-modal").modal("hide");
					$(".js-moves-modal").modal("show");
					moves(response);
				});

				$(".see-evo").on("click", function(event){
					event.preventDefault();
					$(".js-pokemon-modal").modal("hide");
		    		$(".js-evolution-modal").modal("show");
		    		type(response);
		    		evolution(response);

				});
			}
		});

		function type(response){
			$(".js-type").empty();
			for(var i = 0; i < response.types.length; i ++){
				if(response.types[i].name != undefined){
					//console.log(response.types[i].name);
					$(".js-type").append(response.types[i].name+" ");
				}
			}

			var sprite = response.sprites[0].resource_uri;

			$.ajax({
				url: sprite,
				success: function(response){
					//console.log(response);
					$(".js-spriteimg").html(`<img src="http://pokeapi.co${response.image}">`);

				}
			});

		}

		function description(response){
			$(".js-descrip").empty();

			var des_arr = response.descriptions;
	
			des_arr.sort(function(des1, des2){
				var a = des1.name.split("_");
				var b = des2.name.split("_");

				var last_a = parseInt(a[a.length-1]);
				var last_b = parseInt(b[b.length-1]);

				return last_a - last_b
			});

			var newest_description_uri = des_arr[des_arr.length - 1].resource_uri;

			$.ajax({
				url: newest_description_uri,
				success: function(response){
					//console.log(response);
					$(".js-descrip").text(response.description);

				}
			});

		}

		function evolution(response){
			//console.log(response);
			$(".non-evo").text(response.name);
			$(".evo").text(response.evolutions[0].to);

			var evo_sprite_uri = response.evolutions[0].resource_uri;

			//console.log(evo_sprite_uri);
			$.ajax({
				url: evo_sprite_uri,
				success: function(response){
					//console.log(response);
					get_evolution_sprite(response);
				}
			});
		}

		function get_evolution_sprite(response){
			var sprite_uri = response.sprites[0].resource_uri;
			//console.log(sprite_uri);
			$.ajax({
				url: sprite_uri,
				success: function(response){
					//console.log(response);
					$(".js-spriteimg-evo").html(`<img src="http://pokeapi.co${response.image}">`);
				}
			});

			$(".evo-button").on("click", function(){
				$(".js-evolution-modal").modal("hide");
				$(".js-pokemon-modal").modal("show");
			});
		}

		function moves(response){
			$(".js-moves-list").empty();
			var moves_arr = response.moves;

			for(var i = 0; i < moves_arr.length; i++){
				if(moves_arr[i].learn_type === "level up" && moves_arr[i].level === 1){
					power(moves_arr[i]);
				}
			}

			$(".moves-button").on("click", function(){
				$(".js-moves-modal").modal("hide");
				$(".js-pokemon-modal").modal("show");
			});
		}

		function power(response){
			var power_uri = response.resource_uri;

			$.ajax({
				url: power_uri,
				success: function(response){
					console.log(response);
					$(".js-moves-list").append(`
						<li>
							${response.name}
							<p>Power: ${response.power}</p>
							<p>PP: ${response.pp}</p>
						</li>
					`);
				}
			});
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

