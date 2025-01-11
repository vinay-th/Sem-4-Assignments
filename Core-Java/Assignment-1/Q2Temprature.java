// Write a Java program that will convert the given temperature in fahrenheit to
// celcius using the formula C=(F-32)/1.8

import java.util.Scanner;

public class Q2Temprature {

    // This is a simple method that returns a float value converted from F -> C
    public static float convertToCelsius(float fah) {
        // always remember to mention float value by adding f after it
        // otherwise it will be assumed as long

        return ((fah - 32) / 1.8f);
    }

    public static void main(String[] args) {
        // When creating any instance of any class we need to either initialize it or
        // allocate memory for that instance
        Scanner sc = new Scanner(System.in);
        float fahrenheit;

        System.out.print("Enter the temperature in fahremheit: ");
        fahrenheit = sc.nextFloat();

        // It is a good practice as a programmer to free your resources explicitly
        sc.close();

        // printing the celsius directly by the method return
        System.out.println(fahrenheit + "° C Fahrenheit in Celsius is: " + convertToCelsius(fahrenheit) + "° C");
    }

}
