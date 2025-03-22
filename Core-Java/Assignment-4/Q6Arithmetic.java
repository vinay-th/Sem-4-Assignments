// 6. Write a Java program that asks the user to input two integers and then divides the first by the second. Handle any ArithmeticException (e.g., division by zero) with an appropriate message.

class DivisionException extends Exception {
    DivisionException(String message) {
        super(message);
    }
}

public class Q6Arithmetic {
    public static void main(String[] args) {
        int num1 = 0;
        int num2 = 0;
        try {
            if (num1 == 0 || num2 == 0) {
                throw new DivisionException("0 detected in division");
            }

            System.out.println("Result: " + num1 / num2);
        } catch (DivisionException e) {
            System.out.println(e);
        }
    }
}
