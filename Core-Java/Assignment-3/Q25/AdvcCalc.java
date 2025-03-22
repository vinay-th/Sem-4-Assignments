package advanceMath;

import mathOperations.Arithmetic;

public class AdvcCalc {
    public int square(int num) {
        return num * num;
    }

    public static void main(String[] args) {
        // Creating an object of Arithmetic class
        Arithmetic arithmetic = new Arithmetic();

        // Performing operations
        int sum = arithmetic.add(10, 5);
        int difference = arithmetic.subtract(10, 5);

        // Creating an object of AdvancedCalc
        AdvcCalc advancedCalc = new AdvcCalc();
        int squaredValue = advancedCalc.square(6);

        // Displaying results
        System.out.println("Sum: " + sum);
        System.out.println("Subtraction: " + difference);
        System.out.println("Square of 6: " + squaredValue);
    }
}
