import java.util.*;
import java.io.*;
class saccount
	{
	static int anum=0;
	static float interest_r=10;//interest rate;
	private float balance;//account balance
	int age;//age of the account holder
	void m_interest()//function to calculate interest
	{
	balance =balance + (balance*interest_r)/1200;
	}

	static void mir(float x)//monthly interest rate modifier
	{
	interest_r=x;
	} 
	saccount(float a,int b)	//inital balance;																																																																																																																																																																																																																																																																																																																																																											
	{
	balance=a;
	age=b;
	}
	void balancep()//exisiting balance display
	{
	System.out.println(balance);



	}
	}

	class ageexception extends Exception
	{
	private int detail;
	private float detail2;
	ageexception(int a,float b)
	{detail=a;
	detail2=b;
	}
	public String toString()
	{
	if(detail<18 && detail2<1000)
	return "Age must be greater than >=18 & Balance must be greater >= 1000["+detail+" , "+detail2+"]:";
	else if(detail<18)
	return "Age must be greater than >=18 ["+detail+"]:";
	else
	return " Balance must be greater >= 1000["+detail2+"]:";
	}
	}

	class bank
	{
	static ArrayList<saccount> c1 = new ArrayList<saccount>(); //why static?**
	public static void new_account(float a,int b) throws ageexception //a =initial balance , b=age
	{
	if(b<18 || a<999)
	throw new ageexception(b,a); 
	c1.add(new saccount(a,b));
	System.out.println("Your account no. is "+(c1.get(0).anum+1));

	}
	public static void main(String args[])
	{



	Scanner in=new Scanner(System.in);
	Scanner in1=new Scanner(System.in);
	Scanner in2=new Scanner(System.in);

	int ch=0;
	do
	{
	System.out.println("1.New account\n2.Print balance\n3.Add monthly interest\n4.Change interest rate\n5.Exit\nEnter your choice ");
	try{
	ch=in2.nextInt();}
	catch ( InputMismatchException ex )
	{ 
	System.out.println("caught (ch): " +ex);

	} 
	switch(ch)
	{
	case 1:System.out.println("Enter intial balance amount\n");
	int age;
	float tem=0;// when declared inside try blocks -> variable not found error why??**
	try{

	tem=in1.nextFloat();
	System.out.println("Enter your age (in years) \n");
	age=in1.nextInt();
	new_account(tem,age);
	c1.get(0).anum+=1;}
	catch ( InputMismatchException ex )
	{ 
	System.out.println("caught: " +ex+ "var " + tem);

	} 

	catch(ageexception e)
	{
	System.out.println("caught: "+e);
	}
	break;
	case 2:System.out.println("Enter your account number\n");
	System.out.flush();
	int num=in.nextInt();
	c1.get(num-1).balancep();
	break;
	case 3:System.out.println("Enter your account number\n");
	int num1=in.nextInt();
	c1.get(num1-1).m_interest();
	break;
	case 4:System.out.println("Enter the new monthly interest rate\n");
	int num2=in.nextInt();
	c1.get(0).mir(num2);
	break;
	}
	}while(ch!=5);
	}}