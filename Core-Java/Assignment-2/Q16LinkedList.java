// Write a Java program to create a Linkedlist and perform following operations on it:
// • add()
// • addAll()
// • AddFirst()
// • get()
// • lastIndexOf()

import java.util.Scanner;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;

public class Q16LinkedList {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        LinkedList<Integer> list = new LinkedList<>();

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

        outerLoop: while (true) {
            // i am doing an infinite menu driven prog you can do it as you like
            System.out.println("\n\nYou can perform following operations on LinkedList: ");
            System.out.println("1. Add element in Linked List");
            System.out.println("2. Add different list in Linked List");
            System.out.println("3. Add element at the start");
            System.out.println("4. Print the element by index");
            System.out.println("5. Get the last index of any recurring element");
            System.out.println("6. Print the linked list");
            System.out.println("7. exit");
            System.out.print("Enter your choice: ");

            int choice = sc.nextInt();

            switch (choice) {
                case 1:
                    // add an element in LinkedList
                    System.out.print("\nEnter the element: ");
                    int num = sc.nextInt();

                    // use add method to add the number in LinkedList
                    list.add(num);
                    break;

                case 2:
                    // We need another collection from user to add it to current list
                    // this collection can be any collection of same datatype
                    // here we took an int arraylist
                    Collection<Integer> newElements = new ArrayList<>();

                    // basically we are making an infinite loop to get elements
                    // when user wants to stop they will enter -1
                    System.out.println("\nEnter those elements that you want to add in the LL(enter -1 to exit): ");

                    int element = 0;
                    while (true) {
                        System.out.print("Enter element: ");
                        element = sc.nextInt();

                        // breaking loop if -1
                        if (element == -1)
                            break;

                        // adding element in new list
                        newElements.add(element);
                    }

                    // using addAll method to add new list just after the current end of the list
                    list.addAll(newElements);

                    System.out.println("New list added ahead successfully");

                    break;

                case 3:
                    // take element from user to add at start of list
                    System.out.print("Enter element: ");
                    // use addFirst method directly bypass get by user
                    list.addFirst(sc.nextInt());

                    break;

                case 4:
                    // get the element on a specific index
                    System.out.print("\nEnter the index you want to get: ");
                    int idx = sc.nextInt();

                    // the get method gets the element on passed index
                    System.out.println("The element on " + idx + " is: " + list.get(idx));

                    break;

                case 5:
                    // we need the last index of any element that might come
                    // multiple times in the list
                    System.out.print("\nEnter the element to find its last index: ");
                    int elementToFind = sc.nextInt();
                    // the index of last occurrence of this element will be returned
                    int lastIdx = list.lastIndexOf(elementToFind);
                    System.out.println("The last index of " + elementToFind + " is: " + lastIdx);

                    break;

                case 6:
                    // print the list using toString
                    System.out.println("The current linked list is: " + list.toString());

                    break;

                case 7:
                    System.out.println("\nExiting the program");
                    break outerLoop;

                default:
                    break;
            }
        }

        sc.close();
    }
}
