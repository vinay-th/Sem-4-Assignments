// Write a Java program to create LinkedList and display them

import java.util.LinkedList;

public class Q12LinkedList {
    public static void main(String[] args) {
        // simple LinkedList with name list
        // initialize it with new keyword
        LinkedList<Integer> list = new LinkedList<>();

        // add elements with add
        list.add(10);
        list.add(20);
        list.add(30);
        list.add(40);
        list.add(50);
        list.add(60);
        list.add(70);

        // print it with toString inbuilt method
        // keep in mind this is an LinkedList class's object's inbuilt method
        System.out.println("The LinkedList is: " + list.toString());
    }
}
