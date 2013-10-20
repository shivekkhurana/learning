package account;

import java.io.*;

public class Main {
    public static void main(String[] args) {

        Account account = new Account();
        CreditAccount cAccount = new CreditAccount();
        BufferedReader keyboard = new BufferedReader(new InputStreamReader(System.in));

        String answer;
        String answer1;
        double money;

        System.out.println("Welcome to Barclay's Bank !");
        account.sleep(2000);

        System.out.println("Do you want to open an account with us {yes/no)?");
            try
            {
                answer = keyboard.readLine();

                if (answer.equals("yes"))
                {
                    account.openAccount();
                    System.out.println("Thank you for opening an account with us! \n"
                            + "As a bonus we've added 100 euros to your account\n"
                            + "Your Account number is: " + account.accountNumber);
                }
                else
                {
                    System.out.println("Have a nice day!");
                }
            }
            catch (Exception e)
            {
                System.out.println("Oh No! " + e.getMessage());
            }
        
        account.sleep(2000);
        
        System.out.println("Would you like to deposit, withdraw or check your account balance?");
        try
        {
            answer = keyboard.readLine();

                if (answer.equals("deposit"))
                {
                    System.out.println("How much would you like to deposit?");
                    answer1 = keyboard.readLine();
                    money = Double.parseDouble(answer1);
                    account.deposit(money);

                    System.out.println("Thank you for your deposit, your current balance is now: " + account.getBalance());
                }
                else if  (answer.equals("withdraw"))
                {
                    System.out.println("How much would you like to withdraw?");
                    answer1 = keyboard.readLine();
                    money = Double.parseDouble(answer1);
                    account.withdraw(money);

                    System.out.println("Thank you for your withdrawal, your current balance is now: " + account.getBalance());
                }
                else if (answer.equals("balance"))
                {
                   System.out.println("Your current balance is: " + account.getBalance());
                }
        }
        catch (Exception e)
            {
                System.out.println("Oh No! " + e.getMessage());
            } 
    }

}