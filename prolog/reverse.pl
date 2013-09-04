myreverse([X|R], Y):-myreverse(R, Z),append(Z, [X], Y).

myreverse([], []).
