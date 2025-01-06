import java.util.Scanner;

public class TwoDimensional {
    public static void print(int[][] arr) {
        for (int[] row : arr) {
            for (int val : row) {
                System.out.print(val + " ");
            }
            System.out.println();
        }
    }

    public static int max(int[][] arr) {
        int max = arr[0][0];

        for (int[] row : arr) {
            for (int val : row) {
                if (max < val)
                    max = val;
            }
        }

        return max;
    }

    int min(int[][] arr) {
        int min = arr[0][0];

        for (int[] row : arr) {
            for (int val : row) {
                if (min > val)
                    min = val;
            }
        }

        return min;
    }

    public static void printDiagonal(int[][] arr) {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                if (i == j || j == 3 - 1 - i)
                    System.out.print(arr[i][j] + " ");
                else
                    System.out.print("  ");
            }
            System.out.println();
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int[][] mat = new int[3][3];

        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                System.out.print("Enter the data for matrix[" + i + "][" + j + "]: ");
                mat[i][j] = sc.nextInt();
            }
        }

        // print(mat);

        // System.out.println("The largest number of the array is : " + max(mat));

        // This is for creating an object and using the instance method
        // TwoDimensional obj = new TwoDimensional();
        // System.out.println("The smallest number of the array is : " + obj.min(mat));

        printDiagonal(mat);

        sc.close();
    }
}
