// 5. Write a Java Program to find area of a circle.

import java.util.Scanner;

public class Q5Circle {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the radius of the circle: ");
        // just like float before now we are using double
        double rad = sc.nextDouble();

        // Math.PI is an inbuilt value for π
        // feel free to use 3.14 if you want to
        double area = Math.PI * rad * rad;

        System.out.println("The are of a circle with radius " + rad + " is: " + area);
    }
}
