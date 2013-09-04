import java.util.Scanner;

class Box
{
	int l,b,h;
	Scanner input = new Scanner(System.in);

	public void setter()
	{
		System.out.print("Enter Length of box : ");
		this.l  = input.nextInt();
	
		System.out.print("\nEnter Breadth of box : ");
		this.b  = input.nextInt();

		System.out.print("\nEnter Height of box : ");
		this.h  = input.nextInt();

		System.out.println("Input Saved ! \n\n");
	}

	public int volume()
	{
		return this.l * this.b * this.h;
	}
}

class Worker
{
	public static void main(String args[])
	{
		Box b = new Box();
		b.setter();
		System.out.println("The volume of box is " + b.volume());
	}
}
