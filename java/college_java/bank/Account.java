package account;


public class Account {
    protected double balance;
    protected int accountNumber;
    protected boolean openAccount = false;


    public void openAccount()
    {
        openAccount = true;
        balance = 100;
        accountNumber++;
    }

    public Account (double amount)
    {
        balance = amount;
    }

    public Account (int account)
    {
        accountNumber = account;
    }

    public Account()
    {
        balance = 0.0;
    }

    public double withdraw(double amount)
    {
        if (balance >= amount)
        {
            balance -= amount;
            return amount;
        }
        else
            System.out.println("Sorry you don't have enough balance to withdraw that amount");
            return 0.0;
    }

    public void deposit (double amount)
    {
        balance += amount;
    }

    public double getBalance()
    {
        return balance;
    }

    public void closeAccount()
    {
        balance = 0.0;
    }

    public void sleep(int time)
        {
            try
            {
                Thread.sleep(time);
            }
            catch (Exception e)
            {
                System.out.println("Oh No! " + e.getMessage());
            }
        }
}