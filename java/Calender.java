import java.util.Scanner;
import java.text.SimpleDateFormat;
class Calender
{
	//print month if first day, no of days are known
	public void month_print(String day, int d)
	{
		String[] days = {"Sun", "Mon", "Tue", "Wed", "Thu","Fri", "Sat"};

		//day  = Elem < days : type = String
		//d = no. of days

		String[][] cal = new String[7][7];
		int i,j,k;
		
		//put headers
		for(i=0; i<7; i++)
		{
			cal[0][i] = days[i];
		}

		for(i=0; i<7; i++)
			if(day.equals(days[i]))
				break;
		//add dates
		k=1;
		//fill first row seperately
		for(j=0; j<7; j++)
		{
			if(j>=i)
				cal[1][j] = "" + k++;
			else
				cal[1][j] = "" ;
		}

		//fill next row onwards
		for(i=2;i<7; i++)
		{
			//column filler
			for(j=0; k<=d && j<7; j++)
			{
				cal[i][j] = ""+k++;
			}
		}

		//last 2 line fillers
		for(i=5; i<7; i++)
		{
			for(j=0; j<7; j++)
				if(cal[i][j] == null)
					cal[i][j] = "";
		}
		//print cal
		k=1;
		for(i=0; i<7; i++)
		{
			for(j=0; j<7; j++)
			{
				if(k<=d+50)
				{
					System.out.print(cal[i][j] + "\t");
					k++;
				}
				else
				{
					break;
				}
			}
			System.out.print("\n");
		}
		System.out.print("\n\n");
	}

	public void C_make()
	{
		Scanner input = new Scanner(System.in);

		//>//Input
		int month, year;

		System.out.print("Enter month no (1-12) : ");
		month = input.nextInt();
		while( month>12 || month <0)
		{	
			System.out.print("Month invalid, enter again (1-12) : ");
			month = input.nextInt();
		}

		System.out.print("Enter year : ");
		year = input.nextInt();

		int[] num_days = {31,28,31,30,31,30,31,31,30,31,30,31};

		//determine whether leap or not
		int leap = 0;
		if(year % 400 == 0 || year % 4 == 0) leap=1;
		int days = num_days[month-1]; // determine no of days in month
		if(month == 2 && leap == 1) days +=1; // fix leap feb
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");	
		try
		{	
			char[] a=sdf.parse("1/"+month+"/"+year).toString().toCharArray();
    		String day = a[0] + "" + a[1] + a[2];
    		this.month_print(day,days);
		}
		catch(Exception e)
		{

		}
	}
}

class Worker
{
	public static void main(String args[])
	{
		Calender c = new Calender();
		c.C_make();
	}
}