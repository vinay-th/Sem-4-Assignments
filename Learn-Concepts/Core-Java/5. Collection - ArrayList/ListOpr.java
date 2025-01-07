import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class ListOpr {
    public static ArrayList<Integer> list = new ArrayList<>();

    public static int maxInList(ArrayList<Integer> list) {
        return Collections.max(list);
    }

    public static int minInList(ArrayList<Integer> list) {
        return Collections.min(list);
    }

    public static int averageList(ArrayList<Integer> list) {
        int sum = 0;

        for (int element : list) {
            sum += element;
        }

        return sum / 2;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num = 0;

        System.out.println("Add numbers to the list(type -1 to exit): ");

        while (true) {
            num = sc.nextInt();
            if (num == -1)
                break;
            list.add(num);
        }

        System.out.println("The maximum number of list: " + maxInList(list));
        System.out.println("The minimum number of list: " + minInList(list));
        System.out.println("The average of list: " + averageList(list));

        sc.close();
    }
}
