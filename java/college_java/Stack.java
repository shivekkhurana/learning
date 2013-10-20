import java.io.*;
import java.util.Scanner;

class Node
{
    public int item;
    public Node next;
    public Node(int val)
    {
        item = val;
    }
    public void displayNode()
    {
        System.out.println("[" + item + "] ");
    }
}
class LinkedList
{
    private Node first;
    public LinkedList()
    {
        first = null;
    }
    public boolean isEmpty()
    {
        return (first==null);
    }
    public void insert(int val)//inserts at beginning of list
    {
        Node newNode = new Node(val);
        newNode.next = first;
        first = newNode;
    }
    public Node delete()//deletes at beginning of list
    {
        Node temp = first;
        first = first.next;
        return temp;
    }
    public void display()
    {
        System.out.println("Elements from top to bottom");
        Node current = first;
        while(current != null)
        {
            current.displayNode();
            current = current.next; 
        }
        System.out.println("");
    }
     
}
class Stack
{
    private LinkedList listObj;
    public Stack()  
    {   
        listObj = new LinkedList();
    }
    public void push(int num)
    {
        listObj.insert(num);
    }
    public Node pop()
    {
        return listObj.delete();
    }
    public boolean isEmpty()
    {
        return listObj.isEmpty();
    }
    public void displayStack()
    {
        System.out.print("Stack : ");
        listObj.display();
    }
} 
class Worker
{
    public static void main(String[] args) throws IOException
    {
        Stack demo = new Stack(); 

        System.out.println("Stack Initiatilised");
        demo.displayStack();

        while(true){
            int opt;
            Scanner input = new Scanner(System.in);
            System.out.print("1 : Push\n2 : Pop\n3 : Display\n4 : Quit\nEnter choice : ");
            opt = input.nextInt();

            if(opt == 1){
                System.out.print("Enter number to push : ");
                int a = input.nextInt();
                demo.push(a);
                demo.displayStack();
            }

            if(opt == 2){
                demo.pop();
                demo.displayStack();
            }

            if(opt == 3){
                demo.displayStack();
            }

            if(opt == 4){
                break;
            }

            else{
                System.out.println("Invalid choice !");
            }
        }
        /*//
        demo.push(10); 
        demo.push(20); 
        demo.displayStack(); 
        demo.push(30); 
        demo.push(40); 
        demo.displayStack(); 
        demo.pop(); 
        demo.pop(); 
        System.out.println("Two elements are popped");
        demo.displayStack(); 
        //*/
    } 
}