import java.util.Arrays;
import java.util.Scanner;

public class Employees {
    private int id;
    private String name;
    private float salary;

    Employees(int id, String name, float salary) {
        this.id = id;
        this.name = name;
        this.salary = salary;
    }

    public static Employees[] sortEmp(Employees[] arr) {
        Arrays.sort(arr, (e1, e2) -> Float.compare(e2.salary, e1.salary));
        Employees[] sortedEmp = arr;

        return sortedEmp;
    }

    public static void print(Employees obj) {
        System.out.println("Employee id: " + obj.id);
        System.out.println("Employee name: " + obj.name);
        System.out.println("Employee salary: " + obj.salary);
        System.out.println();
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Enter the number of employees: ");
        int n = sc.nextInt();

        Employees[] employees = new Employees[n];

        for (int i = 0; i < n; i++) {
            System.out.print("Enter the name of the employee: ");
            sc.nextLine();
            String name = sc.nextLine();

            System.out.print("Enter the salary of the employee: ");
            float salary = sc.nextFloat();

            employees[i] = new Employees((i + 1), name, salary);
        }

        Employees[] sortedEmployees = sortEmp(employees);

        for (Employees emp : sortedEmployees) {
            print(emp);
        }

        sc.close();
    }
}
