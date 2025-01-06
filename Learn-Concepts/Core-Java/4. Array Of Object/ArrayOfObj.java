import java.util.Scanner;

public class ArrayOfObj {
    public int data;

    public void initialize(int data) {
        this.data = data;
    }

    public static void printArrayObj(ArrayOfObj... arr) {
        for (ArrayOfObj e : arr) {
            System.out.println(e.data);
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        ArrayOfObj obj[] = new ArrayOfObj[5];

        for (int i = 0; i < obj.length; i++) {
            obj[i] = new ArrayOfObj();
            System.out.print("Enter data: ");
            int val = sc.nextInt();
            obj[i].initialize(val);
        }

        printArrayObj(obj);

        sc.close();
    }
}
