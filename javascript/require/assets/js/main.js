/*
	The first js file to be loaded
	-sets up all the paths
*/

requirejs.config({
	baseUrl:"assets/js",
	paths:{
		jquery:[
			"//code.jquery.com/jquery-1.10.2.min",
			"lib/jquery-2.1.0.min"
		],
		modernizr:"lib/modernizr-2.7.1.min"
	}
});