// 11. Write a Java program that accepts user input as a string and tries to convert it to an integer. Handle NumberFormatException when the user inputs non-numeric data.

import java.util.Scanner;

public class Q11NumberFormat {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a numeric string: ");
        String str = sc.nextLine();

        try {
            int num = Integer.parseInt(str);

            System.out.println("Converted Integer: " + num);
        } catch (NumberFormatException e) {
            System.out.println("Error: Invalid input! Bc enter a numeric value.");
        }

    }
}
