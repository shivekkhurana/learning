import java.util.Scanner;
import java.util.LinkedList;
class DecimalToHex
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

		//l to store hex no. in reverse order
		String l = "";
		String temp;
		char[] letters = "ABCDEF".toCharArray();

		int length = String.valueOf(d).length();
		
		System.out.println(" ");
		while(d>=1)
		{
			if(d%16 <= 8)
			{
				temp = String.valueOf(d%16);
			}
			else
			{
				temp = Character.toString(letters[d%16 - 9]);
			}

			l = l + temp;
			d = d/16;
		}
		System.out.println(reverse(l));
	}
}