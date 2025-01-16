// Write a Java program to create an Arraylist with 5 elements and perform following operations on it:
// • get()
// • contains()
// • remove()
// • sort()

import java.util.ArrayList;
import java.util.Scanner;

public class Q15ArrayList {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        // same as any other collection
        ArrayList<Integer> list = new ArrayList<>();

        // static initialization
        list.add(56);
        list.add(89);
        list.add(47);
        list.add(93);
        list.add(74);
        list.add(61);
        list.add(82);
        list.add(95);
        list.add(38);
        list.add(77);

        // simple labeling of loop if you don't want to use any loop it's fine
        outerLoop: while (true) {
            // i am doing an infinite menu driven prog you can do it as you like
            System.out.println("\n\nYou can perform following operations on ArrayList: ");
            System.out.println("1. Print number by it's index");
            System.out.println("2. Check weather number exists in list");
            System.out.println("3. Remove any index in list");
            System.out.println("4. Sort the array list");
            System.out.println("5. Print the array list");
            System.out.println("6. exit");
            System.out.print("Enter your choice: ");

            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    // get the index that user wants to print
                    System.out.print("\nEnter the index you want to print: ");
                    int index = sc.nextInt();

                    // check if the index is not out of bound
                    if (index > list.size() - 1) {
                        System.out.println("Enter a valid index");
                        break;
                    }

                    // the get method returns the element at the passed index
                    int element = list.get(index);
                    System.out.println("\nThe element on index " + index + " is: " + element);
                    break;

                case 2:
                    // to check the number is present in list get number from user
                    System.out.println("\nEnter the number you want to check: ");
                    int num = sc.nextInt();

                    // the contains method is used to get a boolean weather it is present in list or
                    // not
                    if (list.contains(num))
                        System.out.println("The number is there in the list");
                    else
                        System.out.println("The number is not there in the list");
                    break;

                case 3:
                    // get the index that user wants to remove
                    System.out.print("Enter the index you want to remove: ");
                    int idx = sc.nextInt();

                    // remove method removes that element on it's passed idx
                    list.remove(idx);

                    break;

                case 4:
                    // use simple inbuilt method of sort pass null in args
                    list.sort(null);
                    System.out.println("Sorted the array list");

                    break;

                case 5:
                    // print the list using toString
                    System.out.println("The current list is: " + list.toString());

                    break;

                case 6:
                    System.out.println("\nExiting the program");
                    break outerLoop;

                default:
                    break;
            }
        }
        sc.close();
    }
}
