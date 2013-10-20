import java.util.Scanner;
class Fibonacci
{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		System.out.println("How many terms ? : ");
		int n = input.nextInt();
		int a=0, b=1, c;
		System.out.println("\n" + a);
		while(n>=2)
		{
			n--;
			c = a+b;
			a = b;
			b = c;
			System.out.println(c);
		}
	}
}