/*check whether first elements of the given lists are same*/
prefix_([X|R], [X|W]):-
	/*if same then check with the remaining list*/
	prefix_(R, W).

/*empty list is always a prefix of any other list*/
prefix_([], Y).