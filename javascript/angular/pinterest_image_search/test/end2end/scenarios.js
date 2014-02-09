describe("app", function(){
	describe("search", function(){
		beforeEach(function(){
			broswer().navigateTo(../../index.html);
		});

		it("should fiter phone list as user types into search box", function(){
			expect(repeater(".books li").count()).toBe(6);

			input("search_term").enter("trirpon");
			expect(repeater(".books li").count()).toBe(1);
		})
	})
});