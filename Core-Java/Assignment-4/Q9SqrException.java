// 9. Define User-Defined Exception which calculate the squre of value. 

import java.util.Scanner;

class NegativeNumberException extends Exception {
    public NegativeNumberException(String message) {
        super(message);
    }
}

public class Q9SqrException {
    public static int calculateSquare(int num) throws NegativeNumberException {
        if (num < 0) {
            throw new NegativeNumberException("Error: Cannot calculate square of a negative number: " + num);
        }
        return num * num;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        try {
            // Taking input from user
            System.out.print("Enter a number to find its square: ");
            int number = scanner.nextInt();

            // Calculating square
            int square = calculateSquare(number);
            System.out.println("Square of " + number + " is: " + square);

        } catch (NegativeNumberException e) {
            System.out.println(e.getMessage());
        } catch (Exception e) {
            System.out.println("Invalid input! Please enter an integer.");
        } finally {
            scanner.close(); // Closing scanner
        }
    }
}
