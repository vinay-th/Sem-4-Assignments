// 15. Write a program to handle the user defined exception using throw keyword.

import java.util.Scanner;

class UserDefinedException extends Exception {
    UserDefinedException(String message) {
        super(message);
    }
}

public class Q15Throw {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try {
            System.out.print("Enter a number: ");
            int num = sc.nextInt();

            if (num < 0)
                throw new UserDefinedException("Error: Negative number not allowed!");

            System.out.println("Entered number: " + num);
        } catch (UserDefinedException e) {
            System.out.println(e);
        } finally {
            sc.close();
        }
    }
}