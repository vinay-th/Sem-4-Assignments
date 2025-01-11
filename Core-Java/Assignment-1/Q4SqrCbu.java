// Write a Java Program that will accept a number from the user and calculate
// its square and cube and display the same.

import java.util.Scanner;

public class Q4SqrCbu {
    public static void main(String[] args) {
        // creating a sc Scanner instance
        Scanner sc = new Scanner(System.in);

        // taking the value from the user
        System.out.print("Enter the number: ");
        float num = sc.nextFloat();

        // simple calculation of square and cubes by normal logic of multiplication
        float sqr = num * num;
        float cbu = num * num * num;

        // calculation of square and cubes by pow method of Math class of Java Lang
        // by default this class is used with double
        // double sqr = Math.pow(num, 2);
        // double cbu = Math.pow(num, 3);

        System.out.println("Square of number " + num + " is: " + sqr);
        System.out.println("Cube of number " + num + " is: " + cbu);

        sc.close();
    }
}
