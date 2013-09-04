import java.util.Scanner;
class Triangle
{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		System.out.println("Enter height of triangle : ");	
		int h = input.nextInt();
		
		int i,j, space;
		int max_stars=1;

		for (i=1; i<h; max_stars+=2, i++);
		space = max_stars/2 + 4;

		for(i=0; i<=h; i++)
		{	
			//print h rows in this loop

			//print spaces
			for(j=0; j<space; j++)
			{
				System.out.print(" ");
			}
			space--;

			//print stars
			for(j=0; j<2*i-1; j++)
			{
				System.out.print("*");	
			}
			System.out.print("\n");
		}
	}
}