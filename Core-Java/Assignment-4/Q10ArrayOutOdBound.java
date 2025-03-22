// 10. Write a class to sort the given set of N integers in descending order. Include a try block to locate the array index out of bounds execption and catch it

import java.util.Arrays;
import java.util.Scanner;

public class Q10ArrayOutOdBound {
    public static void reverseArray(int[] arr) {
        int left = 0, right = arr.length - 1;
        while (left < right) {
            int temp = arr[left];
            arr[left] = arr[right];
            arr[right] = temp;
            left++;
            right--;
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        try {
            // Taking input for the number of elements
            System.out.print("Enter the number of elements (N): ");
            int n = scanner.nextInt();

            if (n <= 0) {
                throw new IllegalArgumentException("Error: N must be greater than zero.");
            }

            int[] numbers = new int[n];

            // Taking array input
            System.out.println("Enter " + n + " integers:");
            for (int i = 0; i < n; i++) {
                numbers[i] = scanner.nextInt();
            }

            // Sorting in descending order
            Arrays.sort(numbers);
            reverseArray(numbers);

            // Display sorted array
            System.out.println("Sorted numbers in descending order:");
            for (int i = 0; i <= n; i++) {
                System.out.print(numbers[i] + " ");
            }

            System.out.print("Enter the index to access: ");
            int idx = scanner.nextInt();

            if (idx > n)
                throw new ArrayIndexOutOfBoundsException("BKL");

        } catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("\nError: Array index out of bounds! Attempted to access an invalid index.");
        } catch (IllegalArgumentException e) {
            System.out.println("Error: " + e.getMessage());
        } catch (Exception e) {
            System.out.println("Invalid input! Please enter valid integers.");
        } finally {
            scanner.close();
        }
    }
}
