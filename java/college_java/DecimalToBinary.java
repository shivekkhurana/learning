import java.util.Scanner;
import java.util.LinkedList;
class DecimalToBinary
{

	public static String reverse( String string ) {
 
		byte[] array = string.getBytes();
	    byte swap;
	 
		for( int i = 0, j = array.length - 1; i < array.length / 2; i++, j-- )
		{
	        swap = array[ j ];
	        array[ j ] = array[ i ];
	        array[ i ] = swap;
	    }
	    return new String( array );
	}

	public static void main(String args[])
	{
		//get int to convert to binary
		Scanner input = new Scanner(System.in);
		System.out.print("Enter decimal integer to convert : ");
		int d = input.nextInt();

		String l = "";
		
		int length = String.valueOf(d).length();
		
		System.out.println(" ");
		while(d>=1)
		{
			l = l + String.valueOf(d%2);
			d = d/2;
		}
		System.out.println(reverse(l));
	}

}

