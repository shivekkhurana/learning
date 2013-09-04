/*match if X is first element of list*/
member_(X, [X|Z]).

/*match otherwise*/
member_(X, [X|Z]):-
	member(X, Z).