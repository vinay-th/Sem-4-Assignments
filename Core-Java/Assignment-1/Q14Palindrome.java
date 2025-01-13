// Write a Java Program to Check Whether a Number is Palindrome or Not

import java.util.Scanner;

public class Q14Palindrome {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number to check for palindrome: ");
        int num = sc.nextInt();
        int res, rem;

        res = rem = 0;

        for (int i = num; i != 0; i /= 10) {
            rem = i % 10;
            res = (res * 10) + rem;
        }

        if (num == res)
            System.out.println("The number you entered is Palindrome");
        else
            System.out.println("The number you entered is Palindrome");

        sc.close();
    }
}
