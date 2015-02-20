make

echo "Bisection"
./bisection 1 0 -3 1
./bisection 1 0 1 1

echo "Fixed Position"
./false_position 1 1 0 1

echo "Newton Raphpson"
./newton_raphson 1 0 0 1

echo "Fixed Point"
./fixed_point 1 0 0 0

echo "Chebyshev"
./chebyshev 1 0 0 0

echo "Newton Raphpson Complex"
./newton_raphson_complex
