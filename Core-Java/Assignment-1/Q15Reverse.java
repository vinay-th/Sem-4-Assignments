// Write a Java program to reverse a number

import java.util.Scanner;

public class Q15Reverse {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number to reverse it: ");
        int num = sc.nextInt();

        int rev, rem;

        rev = rem = 0;

        for (int i = num; i != 0; i /= 10) {
            rem = i % 10;
            rev = (rev * 10) + rem;
        }

        System.out.println("The reversed number of: " + num + " is: " + rev);

        sc.close();
    }
}
