
// Write a Java Program that take one number from user making use of
// JoptionPane class, pass it to the parameterised Constructor and check
// whether its Odd number or Even number
import java.util.Scanner;

import javax.swing.JOptionPane;

public class Q7OddEven {

    // here we are creating a constructor that takes an int as arg
    // this arg will be further checked for if num is even or odd
    // keep the concept of constructor in mind the name of cons
    // has to be same as the class of the main
    // there is no return value
    Q7OddEven(int a) {
        if (a % 2 == 0)
            System.out.println("The number is even");
        else
            System.out.println("The number is odd");
    }

    public static void main(String[] args) {
        // here we need to create a obj or instance of the class
        Scanner sc = new Scanner(System.in);

        String num = JOptionPane.showInputDialog(
                null, // parent window
                "Enter a number: ", // message of dialog
                "Check for even / odd", // the title of window
                JOptionPane.INFORMATION_MESSAGE // the icon of window
        );
        Q7OddEven obj = new Q7OddEven(Integer.parseInt(num));

        sc.close();
    }
}
