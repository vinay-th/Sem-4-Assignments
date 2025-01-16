// Write a Java program to create a two-dimensional array and find the minimum value out of it.

import java.util.Scanner;

public class Q5MinOf2d {
    public static int getMin(int[][] arr) {
        int min = arr[0][0];

        // simple for each loop of matrix
        // get your concept clear
        // A 2D array is like a table:
        // [
        // [1, 2, 3], // Row 0
        // [4, 5, 6], // Row 1
        // [7, 8, 9] // Row 2
        // ]
        //
        // - The outer loop (`for (int[] row : arr)`) iterates over each row
        // - The inner loop (`for (int e : row)`) iterates over each element in the row
        // (e.g., 1, 2, 3). than (4, 5, 6)
        // - This structure processes all elements in the 2D array.

        for (int[] row : arr) {
            for (int e : row) {
                if (min > e)
                    min = e;
            }
        }

        return min;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[][] mat = new int[3][3];

        // simply getting value from user ypu can do this statically
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print("Enter value for matrix[" + i + "][" + j + "]: ");
                mat[i][j] = sc.nextInt();
            }
        }

        System.out.println("For this matrix the smallest num is: " + getMin(mat));

        sc.close();
    }
}
