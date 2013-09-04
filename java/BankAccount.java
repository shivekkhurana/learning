import java.io.*;
class insufbal extends Exception
{
public insufbal(String str)
{
super(str);
}
}

public class BankAccount
{
private int acc_id;
int wd_amt;
private String acc_name;
private double acc_bal;
BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
BankAccount()
{
acc_id=0;
acc_name="";
acc_bal=0.0;
}
public void init()
{
String temp;
try
{
System.out.println("enter the account number");
temp=br.readLine();
acc_id=Integer.parseInt(temp.trim());
System.out.println("enter the account holder name");
acc_name=br.readLine();
System.out.println("enter initial account balance");
temp=br.readLine();
acc_bal=Integer.parseInt(temp.trim());
}
catch(IOException ie)
{
System.out.println(ie.getMessage());
}
}
public void deposit()
{
String temp;
try
{
System.out.println("enter the deposit amount");
temp=br.readLine();
acc_bal+=Double.parseDouble(temp.trim());
}
catch(IOException ie)
{
System.out.println(ie.getMessage());
}
}
void withdraw() throws insufbal
{
String temp;

System.out.println("Enter the withdrawl amount");
temp=br.readLine();
wd_amt=Integer.parseInt(temp.trim());
if(acc_bal>wd_amt)
{
acc_bal=acc_bal-wd_amt;
}
else
{
insufbal insb=new insufbal("insuficient balance inyour account");
throw insb;
}
}
public void show()
{
System.out.println("\n Account Details");
System.out.println("------------------");
System.out.println("Account number:"+acc_id);
System.out.println("Ac_holder name:"+acc_name);
System.out.println("Balance:"+acc_bal);
}
public static void main(String args[])throws IOException
{
BankAccount b=new BankAccount();
b.init();
b.deposit();
b.show();
try
{
b.withdraw();
}
catch(insufbal insb)
{
System.out.println(insb.getMessage());
}
b.show();
}
}