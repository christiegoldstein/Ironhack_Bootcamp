// Write your Pizza Builder JavaScript in this file.

$ (document).on('ready',function(){

	$ ('.btn-pepperonni').on('click',function(){
		$ ('.pep').toggle();
	});


	$ ('.btn-mushrooms').on('click',function(){
		$ ('.mushroom').toggle();
	});


	$ ('.btn-green-peppers').on('click',function(){
		$ ('.green-pepper').toggle();
	});

	$ ('.btn-sauce').on('click',function(){
		$ ('.sauce').toggleClass('sauce-white');
	});

	$ ('.btn-crust').on('click',function(){
		$ ('.crust').toggleClass('crust-gluten-free');
	});

});