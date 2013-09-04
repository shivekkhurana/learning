delete_(X,[X|R],W):-
delete_(X,R,W).

delete_(X,[Y|R],[Y|W]):-
delete_(X,R,W).

delete_(X,[],[]).