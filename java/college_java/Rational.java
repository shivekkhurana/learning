/*
Create a class called Rational for performing arithematic with rational 
numbers.

Use integer variables to represent the private instance variables of your
class numerator and denominator.

Write a constructor method that enables an object of this class to be
initialized when it is declared

Provide a no argument constructor with default values in case no initializers
are provided

Write methods for :
	addition
	subtraction
	multipy
	division
	printing in the form of a/b

Write a program to exercise the above stated class.
*/

class Rational
{
	int n,d;

	//default explicit constructor
	Rational()
	{
		n = d = 1;
	}

	//parametrized constructor
	Rational(int a, int b)
	{
		n=a;
		d=b;
	}

	public int GCF(int a, int b)
	{
		if (b == 0) return a;
		return (GCF(b, a % b));
	}

	public Rational addition(Rational second)
	{
		Rational answer = new Rational();
		int gcf = GCF(d, second.d);
		answer.d = (d*second.d)/gcf;
		answer.n = (n*second.d + second.n*d)/gcf;
		return answer;
	}
	
	public Rational subtraction(Rational second)
	{
		Rational answer = new Rational();
		int gcf = GCF(d, second.d);
		answer.d = (d*second.d)/gcf;
		answer.n = (n*second.d - second.n*d)/gcf;
		return answer;
	}

	public Rational division(Rational second)
	{
		Rational answer = new Rational();
		answer.d = (d*second.n);
		answer.n = (n*second.d);
		return answer;
	}

	public Rational multiplication(Rational second)
	{
		Rational answer = new Rational();
		answer.d = (d*second.d);
		answer.n = (n*second.n);
		return answer;
	}	

	public void print()
	{
		System.out.println(n + "/" + d);
	}
}

class Worker
{
	public static void main(String args[])
	{
		Rational a = new Rational(4,6);
		Rational b = new Rational(1,6);

		Rational c = a.subtraction(b);
		c.print();

		Rational d = a.division(b);
		d.print();

		Rational e = a.multiplication(b);
		e.print();
	}
}