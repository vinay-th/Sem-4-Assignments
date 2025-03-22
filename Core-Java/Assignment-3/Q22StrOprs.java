// 22. Write a Java program to do following operations on String.
// 1. To find the reverse of a string
// 2. To replace string
// 3. To convert into upper case
// 4.Conver the uppercase string to lowercase.

import java.util.Scanner;

public class Q22StrOprs {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String str = "Hello World";
        StringBuffer sb = new StringBuffer(str);

        System.out.println("0. The string is: " + str);
        System.out.println("1. The reversed string is: " + sb.reverse());

        System.out.print("Enter your name: ");
        str = sc.nextLine();

        sb.reverse();

        System.out.println("2. The replaced string is: " + sb.replace(6, 11, str));
        System.out.println("3. The upper cased string is: " + sb.toString().toUpperCase());
        System.out.println("4. The lower cased string is: " + sb.toString().toLowerCase());

        sc.close();
    }
}
