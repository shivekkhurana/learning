class ABC
{
	int i,j;

	//if 
	ABC()
	{
		//explicit default constructor
		i = j = 2;
	}

	ABC(int x, int y)
	{
		i = x;
		j = y;
	}

	public void show()
	{
		System.out.print(i + "  " + j);
	}
}

class Worker
{
	public static void main(String args[])
	{
		ABC a = new ABC();
		ABC b = new ABC(10,10);

		a.show();

		System.out.print("\n");

		b.show();
	}
}