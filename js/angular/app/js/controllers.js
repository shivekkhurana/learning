function BookList($scope){
	$scope.books = [
		{
			"cover"	:"http://d202m5krfqbpi5.cloudfront.net/books/1328763686l/2251306.jpg",
			"name" 		:"brain rules",
			"url" 		:"http://www.goodreads.com/book/show/2251306.Brain_Rules",
			"rating"	:3.6,
			"reads"		:4562
		},
		{
			"cover"	:"http://d202m5krfqbpi5.cloudfront.net/books/1316738629l/82103.jpg",
			"name" 		:"Fail Safe investing",
			"url" 		:"http://www.goodreads.com/book/show/82103.Fail_Safe_Investing",
			"rating"	:4,
			"reads"		:462
		},
		{
			"cover"	:"http://d202m5krfqbpi5.cloudfront.net/books/1365433872l/17745703.jpg",
			"name" 		:"Doon",
			"url" 		:"http://www.goodreads.com/book/show/17745703-doon",
			"rating"	:3,
			"reads"		:62521
		},
		{
			"cover"	:"http://d202m5krfqbpi5.cloudfront.net/books/1328834536l/336258.jpg",
			"name" 		:"Information Dashboard Design",
			"url" 		:"http://www.goodreads.com/book/show/336258.Information_Dashboard_Design",
			"rating"	:4.7,
			"reads"		:45623532
		},
		{
			"cover"	:"http://d202m5krfqbpi5.cloudfront.net/books/1355733528l/15513156.jpg",
			"name" 		:"Of Triton",
			"url" 		:"http://www.goodreads.com/book/show/15513156-of-triton",
			"rating"	:2.6,
			"reads"		:42
		},
		{
			"cover"	:"http://d202m5krfqbpi5.cloudfront.net/books/1369840456l/17937144.jpg",
			"name" 		:"Near and Far",
			"url" 		:"http://www.goodreads.com/book/show/17937144-near-and-far",
			"rating"	:3,
			"reads"		:3252
		},
		{
			"cover"		:"http://d202m5krfqbpi5.cloudfront.net/books/1366244467l/639847.jpg",
			"name" 		:"French Relations",
			"url" 		:"http://www.goodreads.com/book/show/639847.French_Relations",
			"rating"	:4.02,
			"reads"		:584
		},{
			"cover"		:"http://d202m5krfqbpi5.cloudfront.net/books/1348195310l/81939.jpg",
			"name" 		:"The Master of Love",
			"url" 		:"http://www.goodreads.com/book/show/81939.The_Mastery_of_Love",
			"rating"	:4.21,
			"reads"		:10791
		}
	]
}

function PinterestImages($scope, $http){
	var config = {headers: {
			'X-Mashape-Authorization': '7avNlgFIgg7AAu9hesVzQjAQoxrCphQr'
		}
	};

	$scope.$watch("search_term", function(newv,oldv){

		$http.get("https://ismaelc-pinterest.p.mashape.com/search?q="+newv+"&pageIndex=11", config).success(function (data){
			$scope.image_list = data;
			console.log(newv);
			console.log(data);
		});
		return false;
	});
	
}

function Ctrl(){

}