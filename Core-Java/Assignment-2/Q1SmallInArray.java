// Write a Java Program to create an array with 10 elements and find Smallest Number from it

import java.util.Scanner;

public class Q1SmallInArray {

    // creating a simple method that returns min value of the array
    public static int getMin(int[] arr) {
        int min = arr[0];

        // creating a simple for each loop
        // keep in mind the e is element of array arr
        // the e is NOT index it has value
        // ex arr[0] = 20 then e = 20 not 0
        for (int e : arr) {
            // simple min check
            if (e < min)
                min = e;
        }

        return min;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[] arr = new int[10];

        // simple for loop to get values
        for (int i = 0; i < arr.length; i++) {
            System.out.print("Enter value of Arr[" + i + "]: ");
            arr[i] = sc.nextInt();
        }

        System.out.println("The smallest number in array is: " + getMin(arr));

        sc.close();
    }
}
