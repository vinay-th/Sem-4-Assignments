// Write a java Program to remove duplicate element in an Array

public class Q2DuplicateRemove {
    public static void main(String[] args) {
        int arr[] = { 1, 2, 3, 4, 2, 3, 7, 8 };

        System.out.println("The normal array:");
        for (int e : arr) {
            System.out.print(e + " ");
        }

        for (int i = 0; i < arr.length; i++) {
            for (int j = i + 1; j < arr.length; j++) {
                if (arr[i] == arr[j]) {
                    arr[j] = 0;
                }
            }
        }

        System.out.println("\nThe duplicate removed array:");
        for (int e : arr) {
            if (e == 0)
                continue;
            System.out.print(e + " ");
        }
    }
}
