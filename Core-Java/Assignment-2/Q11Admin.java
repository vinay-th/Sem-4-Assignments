// Create a class Admin with Id, enrollment no and name. Create two methods named
// input() and display(). Create 5 objects of that class and print all the values of it.
// Note: use Array of Object concept

import java.util.Scanner;

public class Q11Admin {
    // using private or public here does not really matter
    private int id = 0;
    private String name;

    // the method is not static it will be accessed by an object
    public void input(int id, String name) {
        // since i am using same name var
        // this. keyword is required
        this.id = id;
        this.name = name;
    }

    public void display() {
        System.out.println("\nThe Id is: " + id);
        System.out.println("The name is: " + name + "\n");
    }

    public static void main(String[] args) {
        // simple id keeping
        int id = 0;
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of entries: ");
        int len = sc.nextInt();

        // to create a array of object just use []
        // entries is the name of the object
        Q11Admin[] entries = new Q11Admin[len];

        // use normal index i loop to access entries
        for (int i = 0; i < len; i++) {
            System.out.print("Enter the name: ");
            String name = sc.next();

            // simple id keeping
            id++;

            // Don't forget to *Initialize* the Admin object
            entries[i] = new Q11Admin();
            entries[i].input(id, name);
        }

        // now we can use for each loop
        // because now every entry in entries exist before it was uninitialized
        for (Q11Admin entry : entries) {
            entry.display();
        }

        sc.close();
    }
}
