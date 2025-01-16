// Write a Java program to search an element in an array. (Note: using user-defined function)

import java.util.Scanner;

public class Q9Search {
    // since we were using user defined methods from very start we will not have any problem

    // we are creating a boolean method that will return
    // true or false about does the element exist in array?
    public static void search(int[] arr, int num) {
        // simple array iteration to get the index and num
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] == num) {
                System.out.println("The number " + num + " is present in array at " + i + " index");
                return;
            }
        }
        System.out.println("The number does not exist in the array");
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = { 56, 89, 47, 93, 74, 61, 82, 95, 38, 77 };

        System.out.print("Enter an element that you want to search: ");
        int num = sc.nextInt();

        search(arr, num);

        sc.close();
    }
}
