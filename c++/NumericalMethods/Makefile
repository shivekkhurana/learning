all : bisection false_position newton_raphson

bisection : Polynomial.o bisection.cpp
	g++ bisection.cpp Polynomial.o -o bisection

false_position : Polynomial.o false_position.cpp
	g++ false_position.cpp Polynomial.o -o false_position

newton_raphson : Polynomial.o newton_raphson.cpp
	g++ newton_raphson.cpp Polynomial.o -o newton_raphson

Polynomial.o : Polynomial.cpp
	g++ -c Polynomial.cpp

clean : 
	rm -rf *.o bisection false_position newton_raphson