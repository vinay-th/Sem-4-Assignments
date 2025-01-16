// Write a Java program to create an array with 10 elements and sort it.

import java.util.Arrays;

public class Q4SortArray {
    public static void main(String[] args) {
        // int[] arr = new int[10];
        int[] arr = { 10, 30, 20, 6, 90, 76, 32, 45, 44, 36 };

        // simple pass the arr to the toString method of Arrays util class
        System.out.println("Normal array: " + Arrays.toString(arr));

        // to sort an array you will need same Arrays class
        // the sort method is a in built sorting method in Arrays util class
        Arrays.sort(arr);
        // just for theory keep in mind this inbuilt sort has O(n log n) time complexity

        // simply print the array
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }
}
