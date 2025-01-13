
// Write a Java program to enter two numbers and find the smallest out of them.
// Use conditional operator.
import java.util.Scanner;

public class Q11Max {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter two numbers: ");
        int a = sc.nextInt();
        int b = sc.nextInt();

        // here first ? then : returns a value
        int max = (a > b) ? a : b;

        System.out.println("The maximum num: " + max);

        sc.close();
    }
}
