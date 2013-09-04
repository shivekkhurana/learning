/*if X is head, strip and return tail*/
takeout(X, [X|R], R).

takeout(X, [Y|R], [Y|Z]):-
	takeout(X, R, Z).

