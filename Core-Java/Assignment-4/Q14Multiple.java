// 14. Write a java program to handle the exception using try and multiple catch block.

import java.util.Scanner;

public class Q14Multiple {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try {
            System.out.print("Enter a number: ");
            int num = sc.nextInt();

            if (num < 0)
                throw new Exception("Error: Negative number not allowed!");

            System.out.println("Entered number: " + num);
        } catch (ArithmeticException e) {
            System.out.println("Arithmetic exception occurred.");
        } catch (Exception e) {
            System.out.println("Exception occurred." + e);
        } finally {
            sc.close();
        }
    }
}