
// 23. Write a program that demonstrates autoboxing and autounboxing. Add an int value to an ArrayList<Integer> and print the contents of the list. Then, retrieve the value and perform mathematical operations.
import java.util.ArrayList;

public class Q23ArrayList {
    public static void main(String[] args) {
        // Create an ArrayList of Integer
        ArrayList<Integer> numbers = new ArrayList<>();

        // Autoboxing: int to Integer
        int num = 10;
        numbers.add(num); // Autoboxing happens here

        // Print contents of the list
        System.out.println("ArrayList contents: " + numbers);

        // Retrieve the value (Autounboxing: Integer to int)
        int retrievedNum = numbers.get(0);

        // Perform mathematical operations
        int result = retrievedNum * 2;
        System.out.println("Retrieved number: " + retrievedNum);
        System.out.println("After multiplication by 2: " + result);
    }
}
