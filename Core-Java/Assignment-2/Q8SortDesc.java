// Write a Java program to sort array elements in descending order

import java.util.Arrays;
import java.util.Collections;

public class Q8SortDesc {
    public static void main(String[] args) {
        // here simply we can not use sort method of Arrays class
        // by default it sorts ascending we want descending

        int[] arr = { 56, 89, 47, 93, 74, 61, 82, 95, 38, 77 };

        System.out.println("The unsorted array is: " + Arrays.toString(arr));

        // so there is a way where we reverse the ascending array by util class
        // but this only works with only non primitive class datatype like Integer or any other collection or list

        Arrays.sort(arr);
        // Collections.reverse(arr);

        // manual reversing of array
        // since array is already sorted we can swap start of one half of array with end of other half
        for (int i = 0; i < arr.length / 2; i++) {
            // here we will simply swap the values from behind to start

            // let's assume arr.length - i - 1 is logic here i is for the index
            // and -1 is because of the indexing from 0

            // i = 0 logic = 9
            // swap arr[0] with arr[9]

            // i = 1 logic = 8
            // swap arr[1] with arr[8]

            // the loop continues in same fashion till i != 5

            int temp = arr[i];
            arr[i] = arr[arr.length - i - 1];
            arr[arr.length - i - 1] = temp;
        }

        System.out.println("The sorted array is: " + Arrays.toString(arr));
    }
}
