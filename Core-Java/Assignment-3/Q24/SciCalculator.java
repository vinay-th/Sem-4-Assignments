package SciCal;

import Calc.Calculator;

public class SciCalculator {
    double getSqrRoot(int a) {
        return a * a;
    }

    public static void main(String[] args) {
        Calculator cal = new Calculator();

        int sum = cal.sum(10, 20);
        int sub = cal.subtract(100, 20);

        SciCalculator sciCal = new SciCalculator();

        double sqrRt = sciCal.getSqrRoot(49);

        System.out.println("Sum: " + sum);
        System.out.println("Sub: " + sub);
        System.out.println("Square root: " + sqrRt);
    }
}
