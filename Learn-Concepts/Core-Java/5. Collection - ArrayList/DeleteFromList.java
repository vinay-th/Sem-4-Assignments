
// Write a program to create an ArrayList of strings, add 5 names to it, and then remove a name specified by the user. After removal, display the updated list.
import java.util.ArrayList;
import java.util.Scanner;

public class DeleteFromList {
    public static ArrayList<Integer> list = new ArrayList<>();

    public static void delete(int pos) {
        list.remove(pos);
    }

    public static void print() {
        list.forEach(e -> {
            System.out.println(e);
        });
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        list.add(1);
        list.add(2);
        list.add(3);
        list.add(4);
        list.add(5);
        list.add(6);

        System.out.println("The current list: " + list);
        System.out.print("Enter the position number that you want to delete: ");
        int pos = sc.nextInt();

        delete(pos);
        System.out.println("The list after deletion: " + list);
    }
}
