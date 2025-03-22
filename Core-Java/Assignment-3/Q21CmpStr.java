// 21. Write a java program which contains the two string from user and perform the following
// string.
// ● Find out whether two strings are equal.
// ● Find out whether two strings equal when case is ignored.
// ● Compare two strings.

import java.util.Scanner;

public class Q21CmpStr {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String str1 = sc.nextLine();

        System.out.print("Enter another string: ");
        String str2 = sc.nextLine();

        if (str1.equals(str2))
            System.out.println("The strings are equal");
        else {
            if (str1.equalsIgnoreCase(str2))
                System.out.println("The strings are equal when ignored case");
            else
                System.out.println("When compared both strings: " + str1.compareTo(str2));
        }

        sc.close();
    }
}
