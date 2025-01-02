import java.util.Scanner;

class ArrayPass {
    static int max(int[] arr) {
        int max = arr[0];
        for (int i : arr) {
            if (max < i)
                max = i;
        }
        return max;
    }

    public static void main(String args[]) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the length of the array: ");
        int len = sc.nextInt();

        int arr[] = new int[len];

        for (int i = 0; i < len; i++) {
            System.out.print("Enter the data for index [" + i + "]: ");
            arr[i] = sc.nextInt();
        }

        int max = max(arr);
        System.out.println("The maximum number among the array is: " + max);

        sc.close();
    }
}