describe("app controllers", function(){
	describe("BookList", function(){
		it("should show 2 'books'", function(){
			var scope = {};
			controller = new BookList(scope);
			expect(scope.books.length).toBe(2);
		});
	});
});