// Write a Java program to create a two-dimensional array and sum all the diagonal elements of it.
public class Q6SumOfDiagonals {
    public static void main(String[] args) {
        // here the problem is when we write the logic of the diagonals
        // we have to exclude the center of the matrix to be counted twice

        int[][] arr = { { 1, 2, 3 }, { 4, 5, 6 }, { 7, 8, 9 } };
        int sum = 0;

        // this will be number of the rows but since this is a sqr mat rows = cols
        int n = arr.length;

        // SImply printing the matrix here Arrays.toString won't work as it will print
        // the address of the rows not their elements
        System.out.println("The matrix is:");
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print(arr[i][j] + " ");
            }
            System.out.println();
        }

        for (int i = 0; i < n; i++) {
            // for the primary diagonal where both row and col are equal
            sum += arr[i][i];

            // for the secondary diagonal we will
            // deduct the current row by the n - 1 since our indexing starts with 0
            // this also solves our problem of center let's trace
            // let's call n - i - 1 logic

            // i = 0 logic = 2 so i != logic
            // this is top right corner add this to sum

            // i = 1 logic = 1 so skip center is skipped

            // i = 2 logic = 0 so i != logic
            // this is bottom left corner add this to sum

            // this logic will work for every sqr matrix
            if (i != n - i - 1) {
                sum += arr[i][n - i - 1];
            }
        }

        System.out.println("Sum of diagonal elements: " + sum);
    }
}
