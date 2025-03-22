// 3. Write a Java program to input n integer numbers and display lowest and second lowest
// number. Also handle the different exceptions possible to be thrown during execution. 

import java.util.Scanner;

public class Q3Numbers {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        try {
            int num = 0;
            int largest = 0, secondLargest = 0;
            while (num != -1) {
                System.out.print("Enter a number(to exit enter -1): ");
                num = sc.nextInt();
                if (num > largest) {
                    secondLargest = largest;
                    largest = num;
                }
            }
            System.out.println("The largest num you entered is: " + largest);
            System.out.println("The second largest num you entered is: " + secondLargest);

        } catch (IllegalArgumentException e) {
            System.out.println(e);
        } catch (Exception e) {
            System.out.println(e);
        }

        sc.close();
    }
}
