import java.util.Scanner;
class Swap
{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);

		int m,n;

		System.out.println("Enter first int : ");
		m = input.nextInt();

		System.out.println("Enter second int : ");
		n = input.nextInt();
			
		System.out.println("Before swap \nm = " + m + " n = " + n + "\nAfter Swap\n");
		
		m = m+n;
		n = m-n;
		m = m-n;

		System.out.println("m = " + m + " n = " + n);
	}
}