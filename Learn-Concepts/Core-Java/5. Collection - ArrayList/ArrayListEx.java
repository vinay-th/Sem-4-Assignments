import java.util.ArrayList;
import java.util.Scanner;

public class ArrayListEx {
    public static void print(ArrayList<Integer> arr) {
        for (int e : arr) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayList<Integer> arr = new ArrayList<>();

        System.out.print("Enter the number of elements to enter in list: ");
        int num = sc.nextInt();

        for (int i = 0; i < num; i++) {
            System.out.print("Enter the number: ");
            int val = sc.nextInt();

            arr.add(val);
        }

        print(arr);

        sc.close();
    }
}
