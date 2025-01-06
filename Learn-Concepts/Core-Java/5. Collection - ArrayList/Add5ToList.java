
// Write a program to create an ArrayList of integers, add 5 numbers to it, and print the list.
import java.util.ArrayList;

public class Add5ToList {
    private static ArrayList<Integer> list = new ArrayList<>();

    public static void print() {

        for (int element : list) {
            System.out.println(element + 5);
        }
    }

    public static void main(String[] args) {
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);
        list.add(6);

        print();
    }
}
