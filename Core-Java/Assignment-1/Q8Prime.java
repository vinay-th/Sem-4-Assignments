
// Write a Java Program that will ask the user to input one number and check
// whether its prime number or not using Constructor
import java.util.Scanner;

import javax.swing.JOptionPane;

public class Q8Prime {

    // here is a static variable isPrime
    static boolean isPrime = true;

    Q8Prime(int a) {
        for (int i = 2; i <= a / 2; i++) {
            if (a % i == 0) {
                isPrime = false;
                // if the number is not prime this will end the loop to check further
                break;
            }
        }
        if (isPrime)
            System.out.println("Number: " + a + " is Prime");
        else
            System.out.println("Number: " + a + " is not Prime");

    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        // never forget that JOptionPane only returns a "String"
        String num = JOptionPane.showInputDialog(
                null,
                "Enter a number: ",
                "Prime or Not",
                JOptionPane.INFORMATION_MESSAGE);

        // Just like you have to remember to take input in string
        // Before using the input you need to parse it
        Q8Prime obj = new Q8Prime(Integer.parseInt(num));
    }
}
