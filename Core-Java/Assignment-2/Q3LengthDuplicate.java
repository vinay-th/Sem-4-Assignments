// Write a Java program to remove the duplicate elements of a given array and return the
// new length of the array.
// Example array: [20, 20, 30, 40, 50, 50, 50]

import java.util.Arrays;

public class Q3LengthDuplicate {
    public static void main(String[] args) {
        int arr[] = { 20, 20, 30, 40, 50, 50, 50 };

        // in this prog we can't use 0 changing value to get duplicate as
        // that will not work properly

        // i will refer this as unq
        int uniqueIndex = 0;

        // Arrays is a simple java util class that let us print the arr
        // without making a loop it prints a clean arr with brackets[]
        // use toString method of Arrays class
        System.out.println("The normal array:" + Arrays.toString(arr));

        for (int i = 0; i < arr.length; i++) {
            // first the index is 0 arr[0] = 20 then unq is 0
            // arr[i] = 20 arr[unq] = 20 so skip

            // index is 1 arr[i] = 20 unq is 0
            // arr[i] = 20 arr[unq] = 20 so skip

            // index is 2 arr[i] = 30 unq is 0
            // arr[i] = 30 arr[unq] = 20 so unq++ = 1
            // arr[unq] = 30 now array is 20,30

            // index is 3 arr[i] = 40 unq is 1
            // arr[i] = 40 arr[unq] = 30 so unq++ = 2
            // arr[unq] = 40 now array is 20,30,40

            // same till i = 6

            // so basically we are pushing all unique elements in front
            // of the array
            if (arr[i] != arr[uniqueIndex]) {
                uniqueIndex++;
                arr[uniqueIndex] = arr[i];
            }

        }
        // we pushed all the unique infront and back ones are garbage
        // unq = 3
        // at the end arr = 20, 30, 40, 50, 50, 50, 50

        // because the length of the array is according to 1-n not 0-n
        // so index length + 1
        uniqueIndex++;

        System.out.println("\nThe duplicate removed array:");
        for (int i = 0; i < uniqueIndex; i++) {
            // only printing the front unique elements of array
            System.out.print(arr[i] + " ");
        }

        // the pro way of printing such array is
        // System.out.println("New unique array: " +
        // Arrays.toString(Arrays.copyOf(arr, uniqueIndex)));

        System.out.println("\nThe new unique length array is: " + uniqueIndex);
    }
}
