import java.util.Scanner;

class Velocity
{
	//variables
	float d,t;

	//construct
	public Velocity()
	{}

	public void setter()
	{
		Scanner input = new Scanner(System.in);
		
		System.out.print("Enter Distance in km covered during trip : ");
		this.d = input.nextFloat();

		System.out.print("Enter Time taken in hours: ");
		this.t = input.nextFloat();
	}

	public float v_per_hour()
	{
		return d/t;
	}

	public float v_per_minute()
	{
		return d/(t*60);
	}
}

class Worker
{
	public static void main(String args[])
	{
		Velocity v = new Velocity();
		v.setter();

		System.out.println("Velocity in kmph = " + v.v_per_hour());
		System.out.println("Velocity in kmpm = " + v.v_per_minute());
	}
}