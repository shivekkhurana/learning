import java.util.Scanner;

class EvenOddThread{
	public static void main(String args[]){
		Scanner input = new Scanner(System.in);

		System.out.print("Enter upper limit : ");
		final int upper = input.nextInt();

		Thread even = new Thread(){
			public void run(){
				for(int i = 0; i< upper; i+=2){
					try{
						System.out.println("even : "+i);
						sleep(100);
					}
					catch(InterruptedException e){
						e.printStackTrace();
					}
				}
			}
		};
		even.start();


		Thread odd = new Thread(){
			public void run(){
				for(int i = 1; i< upper; i+=2){
					try{
						System.out.println("odd  : "+i);
						sleep(100);
					}
					catch(InterruptedException e){
						e.printStackTrace();
					}
				}
			}
		};
		odd.start();
	}
}