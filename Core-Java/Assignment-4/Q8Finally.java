// 8. Write a program to demonstrate the use of the finally block. Ensure that the program
// prints a message from the finally block regardless of whether an exception is thrown

import java.util.Scanner;

public class Q8Finally {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[5];

        System.out.print("Enter the index you want to access: ");
        int idx = sc.nextInt();

        try {
            if (idx > arr.length)
                throw new ArrayIndexOutOfBoundsException("Yeh index toh hai bhi nai bkl");
            System.out.println("Success");
        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println(e);
        } finally {
            System.out.println("This line will print anyways even when exception occurs");
            sc.close();
        }
    }
}
