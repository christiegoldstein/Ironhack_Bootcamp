// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).on("ready", function(){
	$(".js-ingred").on("click", function(event){
		event.preventDefault();

		var sandwich_id = $(".js-sandwich").attr("data");
		console.log(sandwich_id);
		var ingredientData = {
			ingredient_id: $(event.currentTarget).attr("data")
		};

		$.ajax({
			type: "post",
			url: `/api/sandwiches/${sandwich_id}/ingredients/add`,
			data: ingredientData,
			success: function(response){ 
				$(".js-ingred-list").append(`
					<li>${response.name}</li>
				`);
				console.log("here");
			}
		});
	});
});

