// 16. Write a java program which shows String class methods. 

import java.util.Scanner;

public class Q16StringMethods {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String str = sc.nextLine();

        System.out.println("\n\nThe string you entered is: " + str);
        System.out.println("Length of string: " + str.length());
        System.out.println("Character at index 3: " + str.charAt(3));
        System.out.println("Substring (2 to 5): " + str.substring(2, 5));
        System.out.println("Uppercase: " + str.toUpperCase());
        System.out.println("Lowercase: " + str.toLowerCase());
        System.out.println("Contains 'a': " + str.contains("a"));
        System.out.println("Add \"Hello\" in front: " + "Hello! ".concat(str));

        sc.close();
    }
}
