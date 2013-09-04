import java.util.Scanner;
class Evenodd
{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		System.out.print("Enter int to check : ");
		int n = input.nextInt();

		if (n%2 == 0)
			System.out.print(" is Even.");
		else
			System.out.print(" is Odd.");
	}
}