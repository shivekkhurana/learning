all : bisection false_position newton_raphson fixed_point chebyshev

bisection : Polynomial.o bisection.cpp
	g++ bisection.cpp Polynomial.o -o bisection

false_position : Polynomial.o false_position.cpp
	g++ false_position.cpp Polynomial.o -o false_position

newton_raphson : Polynomial.o newton_raphson.cpp
	g++ newton_raphson.cpp Polynomial.o -o newton_raphson

fixed_point : Polynomial.o fixed_point.cpp
	g++ fixed_point.cpp Polynomial.o -o fixed_point

chebyshev : Polynomial.o chebyshev.cpp
	g++ chebyshev.cpp Polynomial.o -o chebyshev

# utils
Polynomial.o : Polynomial.cpp
	g++ -c Polynomial.cpp

clean : 
	rm -rf *.o bisection false_position newton_raphson fixed_point chebyshev