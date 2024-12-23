import java.util.Scanner;

public class InputScanner {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter a number: ");
        int num = sc.nextInt();

        System.out.println("The number was: " + num);

        sc.close();
    }
}
