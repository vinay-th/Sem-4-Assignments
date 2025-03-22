// 19. Create a object of string buffer class,which stores a string from the user. Perform the
// following operations.
// ● Reverse the string and print it.
// ● Take another string from the user and append it with existing string.
// ● Print the capacity of the modified string.

import java.util.Scanner;

public class Q19StrOpr {
    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer();
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a string: ");
        String str = sc.nextLine();

        sb.append(str);

        System.out.println("The reversed string is: " + sb.reverse());
        System.out.print("Enter another string: ");
        str = sc.nextLine();

        sb.append(str);
        System.out.println("The string now is: " + sb);
        System.out.println("The capacity of the string buffer is: " + sb.capacity());

        sc.close();
    }

}
