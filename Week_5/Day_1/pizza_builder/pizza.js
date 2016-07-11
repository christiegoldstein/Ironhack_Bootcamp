// Write your Pizza Builder JavaScript in this file.

$ (document).on('ready',function(){

	$ ('.btn-pepperonni').on('click',function(){
		$ ('.pep').toggle();
		$ (this).toggleClass("active");
		$ ('.price li:first').toggleClass("hide");
		update_price();
	});


	$ ('.btn-mushrooms').on('click',function(){
		$ ('.mushroom').toggle();
		$ (this).toggleClass("active");
		$ ('.price li:nth-child(2)').toggleClass("hide");
		update_price();
	});


	$ ('.btn-green-peppers').on('click',function(){
		$ ('.green-pepper').toggle();
		$ (this).toggleClass("active");
		$ ('.price li:nth-child(3)').toggleClass("hide");
		update_price();
	});

	$ ('.btn-sauce').on('click',function(){
		$ ('.sauce').toggleClass('sauce-white');
		$ (this).toggleClass("active");
		$ ('.price li:nth-child(4)').toggleClass("hide");
		update_price();
	});

	$ ('.btn-crust').on('click',function(){
		$ ('.crust').toggleClass('crust-gluten-free');
		$ (this).toggleClass("active");
		$ ('.price li:nth-child(5)').toggleClass("hide");
		update_price();
	});

	function update_price(){
		console.log("in here");
		var total = 10;
		if($('.btn-pepperonni').hasClass('active')){
			total += 1;
		}
		if($('.btn-mushrooms').hasClass('active')){
			total += 1;
		}
		if($('.btn-green-peppers').hasClass('active')){
			total += 1;
		}
		if($('.btn-sauce').hasClass('active')){
			total += 3;

		}
		if($('.btn-crust').hasClass('active')){
			total += 5;
		}

		$('strong').html(total);
	}

});