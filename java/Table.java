import java.util.Scanner;
class Table
{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		System.out.println("Enter int to print table : ");
		int n = input.nextInt();
		int i;

		for(i=1; i<=10; i++)
		{
			System.out.println(n + " x " + i + " = " + n*i);
		}
	}
}