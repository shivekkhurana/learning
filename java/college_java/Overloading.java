class Overloaded
{
	public void Print()
	{
		for(int i=0; i<2; i++)
			System.out.println("Print");
	}

	public void Print(String s)
	{
		for(int i=0; i<3; i++)
			System.out.println(s);
	}

	public void Print(String s, int n)
	{
		for(int i=0; i<n; i++)
			System.out.println(s);
	}
}

class Worker
{
	public static void main(String args[])
	{
		Overloaded o = new Overloaded();
		
		System.out.println("\no.Print();\n------------------");
		o.Print();

		System.out.println("\no.Print(\"Shivek\");\n------------------");
		o.Print("Shivek");
		
		System.out.println("\no.Print(\"Mehak\",10);\n-------------------");
		o.Print("Mehak",10);
	}
}