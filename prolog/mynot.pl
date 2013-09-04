/*if X is true, do not try to match it further, ie cut(!), and return false*/
mynot(X):-
	/*cut is necessary because X will match the suceeding fact otherwise and return truet*/
	X,!,false.

/*return true for all values of X*/
mynot(X).
