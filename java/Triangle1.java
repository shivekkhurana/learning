import java.util.Scanner;
class Triangle
{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		System.out.println("Enter height of triangle : ");	
		int h = input.nextInt();
		int i,j;
		for(i=0; i<h; i++)
		{	
			for(j=0;  j<=i; j++)
			{	
				System.out.print("*");
			}
			System.out.print("\n");	
		}
	}
}