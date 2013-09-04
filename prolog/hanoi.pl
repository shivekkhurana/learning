move(1, P, Q, _):-
	write('Move top disk from peg '),
	write(P),
	write(' to peg '),
	write(Q),
	nl,
	true.

move(N, P, Q, A):-
	N>1,
	N1 is N-1,
	move(N1, P, A, Q),
	move(1, P, Q, _),
	move(N1, A, Q, P).