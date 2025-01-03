import java.util.Scanner;

public class Students {
    public int id;
    public String name;

    public static int counter = 0;

    public void initialize(int id, String name) {
        this.id = id;
        this.name = name;

        counter++;
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of the students: ");
        int size = sc.nextInt();

        Students[] students = new Students[size];

        for (int i = 0; i < size; i++) {
            students[i] = new Students();

            System.out.print("Enter the id no of " + i + " student: ");
            int id = sc.nextInt();

            System.out.print("Enter the name of " + i + " student: ");
            String name = sc.next();

            students[i].initialize(id, name);
        }

        for (int i = 0; i < size; i++) {
            System.out.println("The id of " + (i + 1) + " student is: " + students[i].id);
            System.out.println("The name of " + (i + 1) + " student is: " + students[i].name + "\n");
        }

        System.out.println("\n\nThe total students you entered is : " + counter);

        sc.close();
    }
}
