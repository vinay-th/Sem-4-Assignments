// 1. Write a program to display the sum of digits of given numbers with exception handling. 

import java.util.Scanner;

public class Q1Exceptions {
    public static int sumOfDigits(int num) {
        int sum = 0;
        int rem = 0;
        for (int i = num; i != 0; i /= 10) {
            rem = i % 10;
            sum += rem;
        }

        return sum;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
            System.out.print("Enter the number: ");
            int num = sc.nextInt();

            System.out.println("Sum of " + num + ": " + sumOfDigits(num));
        } catch (Exception e) {
            System.out.println("Invalid number!");
        }

        sc.close();
    }
}
