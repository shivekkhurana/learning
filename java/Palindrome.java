
import java.util.Scanner;

class Palindrome{
	public static void main(String args[])
	{
		Scanner input = new Scanner(System.in);
		int n = input.nextInt();
		int m=n;
		int reverse = 0;
		while( m != 0 )
      	{
        	reverse = reverse * 10;
        	reverse = reverse + m%10;
        	m = m/10;
      	}
		System.out.println(n + " is ");
		if(reverse != n){
			System.out.println(" not ");
		}
		System.out.println(" a Palindrome.");
	}
}
